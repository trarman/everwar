/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server;

import com.beacon.rpg.server.dao.DaoManager;
import com.beacon.rpg.server.types.MapObject;
import com.beacon.rpg.server.types.NPC;
import com.beacon.rpg.server.types.NPCCharacter;
import com.beacon.rpg.server.types.RPGCharacter;
import com.beacon.rpg.server.types.Tile;
import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import java.awt.Point;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.logging.Logger;
import net.user1.union.api.Client;
import net.user1.union.api.Module;
import net.user1.union.core.attribute.Attribute;
import net.user1.union.core.context.ModuleContext;
import net.user1.union.core.event.RoomEvent;
import sun.misc.BASE64Encoder;

/**
 *
 * @author cternent
 */
public class EverwarRoomModule implements Module, Runnable{

    public static final Integer OBJECT_BARRIER = Integer.valueOf(1);

    private static Logger log = Logger.getLogger(EverwarRoomModule.class.getName());
    private ModuleContext m_ctx;
    private Thread m_thrThis;
    private List<NPC> npcs;
    private int currentNPC;
    public ZoneMap zone;
    public Map<Point, Integer> grid = new HashMap<Point, Integer>();
    private Random rand;

    public boolean init(ModuleContext mc) {
        // --- save the context.  the room in the context (getRoom()) is the room to which this room module
        // --- is associated
        m_ctx = mc;

        // --- register to receive notification when a client is added or removed to the room
        m_ctx.getRoom().addEventListener(RoomEvent.ADD_CLIENT, this, "onAddClient");
        m_ctx.getRoom().addEventListener(RoomEvent.REMOVE_CLIENT, this, "onRemoveClient");

        // Load the zone info
        log.info("Loading room attributes");
        List<Attribute> attributeList = m_ctx.getRoom().getAttributes();
        for (Attribute attr:attributeList) {
            log.info("Found Attribute:"+attr.getName());
        }
        log.info("Loading zone");
        Attribute zoneIdAttr = m_ctx.getRoom().getAttribute("zoneId");
        int zoneId = Integer.parseInt(zoneIdAttr.nullSafeGetValue());
        zone = DaoManager.getInstance().getZoneDao().getZoneMapById(zoneId);
        loadGrid();

        // Go to the map server and determine what NPCs we need
        List<MapObject> mapObjects = DaoManager.getInstance().getMapObjectDao().getMapObjectsForZoneId(zoneId);
        npcs = new ArrayList<NPC>();
        BASE64Encoder encoder = new BASE64Encoder();
        for (MapObject mapObject:mapObjects) {
            if (mapObject.getType()==MapObject.TYPE_STATIONARY_NPC ||
                    mapObject.getType() == MapObject.TYPE_WANDERING_NPC) {
               NPCCharacter npc = DaoManager.getInstance().getNPCDao().getNpcById(mapObject.getReferenceId());
               NPC instance = new NPC("npc"+String.valueOf(mapObject.getId()),mapObject.getX()*48,mapObject.getY()*48,true,5);
               instance.setName(npc.getName());
               instance.setMapObjectId(mapObject.getId());
               Tile tile = DaoManager.getInstance().getTileDao().getTileById(mapObject.getTileId());
               instance.setEncodedImage(encoder.encode(tile.getImageData()));
               instance.setRoom(this);
               // Make the NPC wander if it's the type
               if (mapObject.getType()==MapObject.TYPE_WANDERING_NPC) {
                   instance.state = NPC.STATE_WANDER;
               }
               npcs.add(instance);
               //m_ctx.getRoom().setAttribute(instance.getIdentifier()+"_image", instance.getEncodedImage(), Attribute.SCOPE_GLOBAL, Attribute.FLAG_SHARED);
               m_ctx.getRoom().setAttribute(instance.getIdentifier()+"_moid", instance.getMapObjectId(), Attribute.SCOPE_GLOBAL, Attribute.FLAG_SHARED);
            }
        }
        currentNPC=0;

        rand = new Random();
        
        // --- start our thread
        m_thrThis = new Thread(this);
        m_thrThis.start();

        // --- everything is OK!
        return true;
    }

    public void shutdown() {
        // --- stop listening for the events we registered for in the init method
        m_ctx.getRoom().removeEventListener(RoomEvent.ADD_CLIENT, this, "onAddClient");
        m_ctx.getRoom().removeEventListener(RoomEvent.REMOVE_CLIENT, this, "onRemoveClient");

        m_thrThis = null;
    }

    public void run() {
        while (m_thrThis != null) {
            if (m_ctx.getRoom().getNumClients()>0) {
                // Give an NPC a chance to do something
                NPC npc = npcs.get(currentNPC++);
                if (npc.takeTurn() && npc.isMoving()) {
                    m_ctx.getRoom().sendMessage("NPC_POSITION", npc.getIdentifier()+":"+String.valueOf(npc.x)+","+String.valueOf(npc.y));
                }
                if (currentNPC>npcs.size()-1) {
                    currentNPC=0;
                }
            }
            // --- sleep for 1-3 seconds before we give something else a turn
            try {
                Thread.sleep((long)(Math.random()*2000+1000));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    /**
     * This method is the callback for the event we specified in the init method.  It will be called whenever a client
     * is added to the room.
     */
    public void onAddClient(RoomEvent evt) {
        //m_ctx.getRoom().sendMessage("CHAT_MESSAGE", "Welcome User" + evt.getClient().getClientID() + ". We are USER1.");
    }

    /**
     * This method is the callback for the event we specified in the init method.  It will be called whenever a client
     * is removed from the room.
     */
    public void onRemoveClient(RoomEvent evt) {
        Client client = evt.getClient();
        Attribute attr = client.getAttribute("charId");
        log.info("Caught leaving:"+attr.nullSafeGetValue());
        if (attr!=null && attr.nullSafeGetValue().length()>0) {
            // Update the character
            // String query = "UPDATE characters set health=?, observation=?, strength=?, intelligence=?, agility=?," +
            //    " charm=?, location=?, x=?, y=? where id=?";
            RPGCharacter character = new RPGCharacter();
            character.setCharacterId(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("position");
            String[] posArray = attr.nullSafeGetValue().split(",");
            if (posArray.length==2) {
                character.setY(Integer.parseInt(posArray[0]));
                character.setX(Integer.parseInt(posArray[1]));
            }

            attr = client.getAttribute("health");
            character.setHealth(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("agility");
            character.setAgility(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("charm");
            character.setCharm(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("location");
            character.setLocation(attr.nullSafeGetValue());
            character.setZoneId(zone.getZoneId());

            attr = client.getAttribute("intelligence");
            character.setIntelligence(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("observation");
            character.setObservation(Integer.parseInt(attr.nullSafeGetValue()));

            attr = client.getAttribute("strength");
            character.setStrength(Integer.parseInt(attr.nullSafeGetValue()));

            DaoManager.getInstance().getCharacterDao().updateCharacter(character);
        }
        //m_ctx.getRoom().sendMessage("CHAT_MESSAGE", charNameAttr.nullSafeGetValue() + " has left the area.");
    }

    private void loadGrid() {
        if (zone!=null) {
            log.info("Zone Name is:"+zone.getZoneName());
            Iterator<ZoneCell> i = zone.getMapData().iterator();
            int curx = 0;
            int cury = 0;
            String row = "\n";
            while (i.hasNext()) {
                ZoneCell cell = i.next();
                if (cell.getInteractiveLayerTileId()>0) {
                    // Oddly, we store these maps upside down and backwards!
                    grid.put(new Point(zone.getWidth()-1-curx,zone.getHeight()-1-cury), OBJECT_BARRIER);
                    row+="X";
                } else {
                    row+="_";
                }
                curx++;
                if (curx==zone.getWidth()) {
                    curx=0;
                    cury++;
                    row+="\n";
                }
            }
            log.info(row);
        }
    }

}
