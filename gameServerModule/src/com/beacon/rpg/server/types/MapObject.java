/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

/**
 *
 * @author cternent
 */
public class MapObject {

    // Changes to types need to be reflected in Flex InteractiveDialog.mxml
    public static final int TYPE_STATIONARY_BARRIER = 0;
    public static final int TYPE_STATIONARY_NPC = 1;
    public static final int TYPE_WANDERING_NPC = 2;
    public static final int TYPE_CONTAINER = 3;
    public static final int TYPE_EXIT = 4;

    private Integer id;
    private Integer type;
    private Integer zoneId;
    private Integer x;
    private Integer y;
    private Integer tileId;
    private Integer referenceId; // Reference to external tables, eg. NPC

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the type
     */
    public Integer getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * @return the zoneId
     */
    public Integer getZoneId() {
        return zoneId;
    }

    /**
     * @param zoneId the zoneId to set
     */
    public void setZoneId(Integer zoneId) {
        this.zoneId = zoneId;
    }

    /**
     * @return the x
     */
    public Integer getX() {
        return x;
    }

    /**
     * @param x the x to set
     */
    public void setX(Integer x) {
        this.x = x;
    }

    /**
     * @return the y
     */
    public Integer getY() {
        return y;
    }

    /**
     * @param y the y to set
     */
    public void setY(Integer y) {
        this.y = y;
    }

    /**
     * @return the tileId
     */
    public Integer getTileId() {
        return tileId;
    }

    /**
     * @param tileId the tileId to set
     */
    public void setTileId(Integer tileId) {
        this.tileId = tileId;
    }

    /**
     * @return the referenceId
     */
    public Integer getReferenceId() {
        return referenceId;
    }

    /**
     * @param referenceId the referenceId to set
     */
    public void setReferenceId(Integer referenceId) {
        this.referenceId = referenceId;
    }

}
