/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

import java.io.Serializable;

/**
 *
 * @author cternent
 */
public class ZoneCell implements Serializable{

    private Integer surfaceLayerTileId;
    private Integer interactiveLayerTileId;
    private Integer upperLayerTileId;

    /**
     * @return the surfaceLayerTileId
     */
    public Integer getSurfaceLayerTileId() {
        return surfaceLayerTileId;
    }

    /**
     * @param surfaceLayerTileId the surfaceLayerTileId to set
     */
    public void setSurfaceLayerTileId(Integer surfaceLayerTileId) {
        this.surfaceLayerTileId = surfaceLayerTileId;
    }

    /**
     * @return the interactiveLayerTileId
     */
    public Integer getInteractiveLayerTileId() {
        return interactiveLayerTileId;
    }

    /**
     * @param interactiveLayerTileId the interactiveLayerTileId to set
     */
    public void setInteractiveLayerTileId(Integer interactiveLayerTileId) {
        this.interactiveLayerTileId = interactiveLayerTileId;
    }

    /**
     * @return the upperLayerTileId
     */
    public Integer getUpperLayerTileId() {
        return upperLayerTileId;
    }

    /**
     * @param upperLayerTileId the upperLayerTileId to set
     */
    public void setUpperLayerTileId(Integer upperLayerTileId) {
        this.upperLayerTileId = upperLayerTileId;
    }


}
