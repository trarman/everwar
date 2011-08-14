/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

/**
 *
 * @author cternent
 */
public class NPCCharacter {

    private Integer id;
    private String name;
    private Integer observation;
    private Integer strength;
    private Integer intelligence;
    private Integer agility;
    private Integer charm;
    private Integer faction;
    private Integer vendorStore; // null or <1 if not a vendor
    private Integer conversationStart; // null or <1 if doesn't talk to friendlies

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
     * @return the observation
     */
    public Integer getObservation() {
        return observation;
    }

    /**
     * @param observation the observation to set
     */
    public void setObservation(Integer observation) {
        this.observation = observation;
    }

    /**
     * @return the strength
     */
    public Integer getStrength() {
        return strength;
    }

    /**
     * @param strength the strength to set
     */
    public void setStrength(Integer strength) {
        this.strength = strength;
    }

    /**
     * @return the intelligence
     */
    public Integer getIntelligence() {
        return intelligence;
    }

    /**
     * @param intelligence the intelligence to set
     */
    public void setIntelligence(Integer intelligence) {
        this.intelligence = intelligence;
    }

    /**
     * @return the agility
     */
    public Integer getAgility() {
        return agility;
    }

    /**
     * @param agility the agility to set
     */
    public void setAgility(Integer agility) {
        this.agility = agility;
    }

    /**
     * @return the charm
     */
    public Integer getCharm() {
        return charm;
    }

    /**
     * @param charm the charm to set
     */
    public void setCharm(Integer charm) {
        this.charm = charm;
    }

    /**
     * @return the faction
     */
    public Integer getFaction() {
        return faction;
    }

    /**
     * @param faction the faction to set
     */
    public void setFaction(Integer faction) {
        this.faction = faction;
    }

    /**
     * @return the vendorStore
     */
    public Integer getVendorStore() {
        return vendorStore;
    }

    /**
     * @param vendorStore the vendorStore to set
     */
    public void setVendorStore(Integer vendorStore) {
        this.vendorStore = vendorStore;
    }

    /**
     * @return the conversationStart
     */
    public Integer getConversationStart() {
        return conversationStart;
    }

    /**
     * @param conversationStart the conversationStart to set
     */
    public void setConversationStart(Integer conversationStart) {
        this.conversationStart = conversationStart;
    }
    
}
