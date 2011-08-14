/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server;

import com.beacon.rpg.server.dao.DaoManager;
import com.beacon.rpg.server.types.ZoneMap;
import java.util.logging.Logger;
import net.user1.union.api.Module;
import net.user1.union.api.Room;
import net.user1.union.core.attribute.Attribute;
import net.user1.union.core.context.ModuleContext;
import net.user1.union.core.def.AttributeDef;
import net.user1.union.core.def.ModuleDef;
import net.user1.union.core.def.RoomDef;

/**
 *
 * @author cternent
 */
public class EverwarServerModule implements Module, Runnable {

    private static Logger log = Logger.getLogger(EverwarServerModule.class.getName());
    private String jdbcurl;
    private String jdbcdriver;
    private String jdbcuser;
    private String jdbcpass;
    private Thread m_thrThis;
    private ModuleContext ctxt;

    private ZoneMap auranLanding;
    private ZoneMap faelorLanding;
    private String unseenObjectId;

    /**
     * This method is called by the server when the module is initialized.  It returns true
     * if the module was able to initialize correctly.  Otherwise it returns false.
     */
    public boolean init(ModuleContext mc) {
        ctxt = mc;
        jdbcurl = (String)mc.getAttributes().get("jdbcurl");
        log.info("Got jdbcurl of "+jdbcurl);
        jdbcdriver = (String)mc.getAttributes().get("jdbcdriver");
        log.info("Got jdbcdriver of "+jdbcdriver);
        jdbcuser = (String)mc.getAttributes().get("jdbcuser");
        log.info("Got jdbcuser of "+jdbcuser);
        jdbcpass = (String)mc.getAttributes().get("jdbcpass");
        log.info("Got jdbcpass of "+jdbcpass);

        DaoManager.getInstance().setJdbcdriver(jdbcdriver);
        DaoManager.getInstance().setJdbcurl(jdbcurl);
        DaoManager.getInstance().setJdbcuser(jdbcuser);
        DaoManager.getInstance().setJdbcpass(jdbcpass);

        Integer auranLandingId = Integer.parseInt((String)mc.getAttributes().get("auranLanding"));
        log.info("Got auranLandingId of "+String.valueOf(auranLandingId));
        Integer auranStartx = Integer.parseInt((String)mc.getAttributes().get("auranStartx"));
        Integer auranStarty = Integer.parseInt((String)mc.getAttributes().get("auranStarty"));
        Integer faelorLandingId = Integer.parseInt((String)mc.getAttributes().get("faelorLanding"));
        log.info("Got faelorLandingId of "+String.valueOf(faelorLandingId));
        Integer faelorStartx = Integer.parseInt((String)mc.getAttributes().get("faelorStartx"));
        Integer faelorStarty = Integer.parseInt((String)mc.getAttributes().get("faelorStarty"));

        unseenObjectId = (String)mc.getAttributes().get("unseenObjectId");
        log.info("Got unseenObjectId of "+unseenObjectId);

        auranLanding = DaoManager.getInstance().getZoneDao().getZoneMapById(auranLandingId);
        log.info("Loaded Auran Landing");
        createRoom(auranLanding, auranStartx, auranStarty, 100);

        faelorLanding = DaoManager.getInstance().getZoneDao().getZoneMapById(faelorLandingId);
        log.info("Loaded Faelor Landing");
        createRoom(faelorLanding, faelorStartx, faelorStarty, 0);

        // --- create and start our thread
        m_thrThis = new Thread(this);
        m_thrThis.start();

        // --- we got here everything must be OK
        return true;

    }

    /**
     * This method is called by the server when the module is shutdown.
     */
    public void shutdown() {
        log.info("everwar shutting down");
        Room room = ctxt.getServer().getRoom(auranLanding.getZoneName());
        room.shutdownRoom();
        room = ctxt.getServer().getRoom(faelorLanding.getZoneName());
        room.shutdownRoom();
        // --- set the thread to null
        m_thrThis = null;
    }

    public void run() {
        log.info("Boo!");
        // --- sleep for the interval given
        try {
            Thread.sleep(300*1000);
        } catch (InterruptedException e) {
            log.warning("Thread for ServerStatsServerModule could not sleep.  Ending Thread.");
            m_thrThis = null;
        }
    }
    
    private void createRoom(ZoneMap zone, Integer startx, Integer starty, Integer fealty) {
        // create the room def
        RoomDef roomDef = new RoomDef();

        // set the ID of the room...if room id is not set a random id will be generated
        roomDef.setRoomID(zone.getZoneName());

        // set the room attribute to not die on empty
        AttributeDef attrDef = new AttributeDef();
        attrDef.setName("_DIE_ON_EMPTY");
        attrDef.setValue(Boolean.FALSE);
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        attrDef = new AttributeDef();
        attrDef.setName("fealty");
        attrDef.setValue(fealty);
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        attrDef = new AttributeDef();
        attrDef.setName("zoneId");
        attrDef.setValue(String.valueOf(zone.getZoneId()));
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        attrDef = new AttributeDef();
        attrDef.setName("zoneStartx");
        attrDef.setValue(startx);
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        attrDef = new AttributeDef();
        attrDef.setName("zoneStarty");
        attrDef.setValue(starty);
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        attrDef = new AttributeDef();
        attrDef.setName("unseenObjectId");
        attrDef.setValue(unseenObjectId);
        attrDef.setFlags(Attribute.FLAG_SHARED);
        roomDef.addAttribute(attrDef);

        // add the chess room module which will run the game of chess in the room
        ModuleDef modDef = new ModuleDef();
        modDef.setType(ModuleDef.CLASS);
        modDef.setSource("com.beacon.rpg.server.EverwarRoomModule");
        roomDef.addModule(modDef);
        
        // use the room context that was passed to your module to get a reference to the server and create our room        
        Room room = ctxt.getServer().createRoom(roomDef);
    }
}
