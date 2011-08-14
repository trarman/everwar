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
public class ConversationExchange {

    private Integer id;
    private String npcDialog;
    private boolean starter;
    private List<ConversationAnswer> responses;

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
     * @return the npcDialog
     */
    public String getNpcDialog() {
        return npcDialog;
    }

    /**
     * @param npcDialog the npcDialog to set
     */
    public void setNpcDialog(String npcDialog) {
        this.npcDialog = npcDialog;
    }

    /**
     * @return the responses
     */
    public List<ConversationAnswer> getResponses() {
        return responses;
    }

    /**
     * @param responses the responses to set
     */
    public void setResponses(List<ConversationAnswer> responses) {
        this.responses = responses;
    }

    /**
     * @return the starter
     */
    public boolean isStarter() {
        return starter;
    }

    /**
     * @param starter the starter to set
     */
    public void setStarter(boolean starter) {
        this.starter = starter;
    }

}
