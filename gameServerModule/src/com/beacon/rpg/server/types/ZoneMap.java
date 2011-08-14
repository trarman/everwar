/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

import java.util.List;

/**
 *
 * @author cternent
 */
public class ZoneMap {

    private int zoneId;
    private String zoneName;
    private int width;
    private int height;
    private String music;
    private List<ZoneCell> mapData;
    private List<MapObject> mapObjects;

    /**
     * @return the zoneId
     */
    public int getZoneId() {
        return zoneId;
    }

    /**
     * @param zoneId the zoneId to set
     */
    public void setZoneId(int zoneId) {
        this.zoneId = zoneId;
    }

    /**
     * @return the zoneName
     */
    public String getZoneName() {
        return zoneName;
    }

    /**
     * @param zoneName the zoneName to set
     */
    public void setZoneName(String zoneName) {
        this.zoneName = zoneName;
    }

    /**
     * @return the width
     */
    public int getWidth() {
        return width;
    }

    /**
     * @param width the width to set
     */
    public void setWidth(int width) {
        this.width = width;
    }

    /**
     * @return the height
     */
    public int getHeight() {
        return height;
    }

    /**
     * @param height the height to set
     */
    public void setHeight(int height) {
        this.height = height;
    }

    /**
     * @return the mapData
     */
    public List<ZoneCell> getMapData() {
        return mapData;
    }

    /**
     * @param mapData the mapData to set
     */
    public void setMapData(List<ZoneCell> mapData) {
        this.mapData = mapData;
    }

    /**
     * @return the mapObjects
     */
    public List<MapObject> getMapObjects() {
        return mapObjects;
    }

    /**
     * @param mapObjects the mapObjects to set
     */
    public void setMapObjects(List<MapObject> mapObjects) {
        this.mapObjects = mapObjects;
    }

    /**
     * @return the music
     */
    public String getMusic() {
        return music;
    }

    /**
     * @param music the music to set
     */
    public void setMusic(String music) {
        this.music = music;
    }

}
