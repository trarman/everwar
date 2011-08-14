/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

/**
 *
 * @author cternent
 */
public class Exit {

    private Integer id;
    private Integer targetId;
    private Integer requiredObjectId;

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
     * @return the targetId
     */
    public Integer getTargetId() {
        return targetId;
    }

    /**
     * @param targetId the targetId to set
     */
    public void setTargetId(Integer targetId) {
        this.targetId = targetId;
    }

    /**
     * @return the requiredObjectId
     */
    public Integer getRequiredObjectId() {
        return requiredObjectId;
    }

    /**
     * @param requiredObjectId the requiredObjectId to set
     */
    public void setRequiredObjectId(Integer requiredObjectId) {
        this.requiredObjectId = requiredObjectId;
    }

}
