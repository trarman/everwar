/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

import com.beacon.rpg.server.EverwarRoomModule;
import java.awt.Point;
import java.util.Random;

/**
 *
 * @author cternent
 */
public class NPC {

    public static final int STATE_STATIONARY = 0;
    public static final int STATE_WANDER = 1;
    public static final int STATE_FOLLOW = 2;
    public static final int STATE_CONVERSE = 3;
    public static final int STATE_SLEEP = 4;
    public static final int STATE_COMBAT = 5;

    private boolean dead;
    private int timeToRespawn;
    public int x;
    public int y;
    private String identifier;
    private String name;
    private String encodedImage;
    private Integer mapObjectId;
    private EverwarRoomModule room;
    public int state = STATE_STATIONARY;
    private Point heading;
    private Random rand;

    public NPC(String identifier, int x, int y, boolean alive, int respawnDelay) {
        this.identifier = identifier;
        this.x = x;
        this.y = y;
        dead = !alive;
        timeToRespawn = respawnDelay;
        rand = new Random();
    }

    public boolean takeTurn() {
        boolean moved = false;
        if (state==STATE_WANDER) {
            if (heading == null) {
                int direction = rand.nextInt(4);
                int destx = 0;
                int desty = 0;
                switch (direction) {
                    case 0:destx=48;
                            break;
                    case 1:destx=-48;
                            break;
                    case 2:desty=48;
                            break;
                    case 3:desty=-48;
                            break;
                }
                heading = new Point(destx,desty);
            }
            if (!collision(x+heading.x, y+heading.y)) {
                x = x+heading.x;
                y = y+heading.y;
                moved=true;
            } else {
                // Find a new direction
                heading = null;
            }
        }
        return moved;
    }

    /**
     * @return the dead
     */
    public boolean isDead() {
        return dead;
    }

    /**
     * @param dead the dead to set
     */
    public void setDead(boolean dead) {
        this.dead = dead;
    }

    /**
     * @return the timeToRespawn
     */
    public int getTimeToRespawn() {
        return timeToRespawn;
    }

    /**
     * @param timeToRespawn the timeToRespawn to set
     */
    public void setTimeToRespawn(int timeToRespawn) {
        this.timeToRespawn = timeToRespawn;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the identifier
     */
    public String getIdentifier() {
        return identifier;
    }

    /**
     * @param identifier the identifier to set
     */
    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    /**
     * @return the encodedImage
     */
    public String getEncodedImage() {
        return encodedImage;
    }

    /**
     * @param encodedImage the encodedImage to set
     */
    public void setEncodedImage(String encodedImage) {
        this.encodedImage = encodedImage;
    }

    /**
     * @param room the room to set
     */
    public void setRoom(EverwarRoomModule room) {
        this.room = room;
    }

    private boolean collision(int x, int y) {
        int gridx = x/48;
        int gridy = y/48;
        boolean stopMoving = (gridx<0 || gridx>=room.zone.getWidth() ||
                gridy<0 || gridy>=room.zone.getHeight());
        return stopMoving ||
                EverwarRoomModule.OBJECT_BARRIER.equals(room.grid.get(new Point(gridx,gridy)));
    }

    /**
     * @return the mapObjectId
     */
    public Integer getMapObjectId() {
        return mapObjectId;
    }

    /**
     * @param mapObjectId the mapObjectId to set
     */
    public void setMapObjectId(Integer mapObjectId) {
        this.mapObjectId = mapObjectId;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getState() {
        return state;
    }

    public boolean isMoving() {
        return (state==STATE_FOLLOW || state==STATE_WANDER);
    }
}
