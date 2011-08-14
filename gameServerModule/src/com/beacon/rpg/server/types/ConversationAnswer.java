/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.types;

/**
 *
 * @author cternent
 */
public class ConversationAnswer {

    public static final int PRECONDITION_NONE = 0;
    public static final int PRECONDITION_ATTRIBUTE_OBSERVATION_MINIMUM = 1;
    public static final int PRECONDITION_ATTRIBUTE_STRENGTH_MINIMUM = 2;
    public static final int PRECONDITION_ATTRIBUTE_INTELLIGENCE_MINIMUM = 3;
    public static final int PRECONDITION_ATTRIBUTE_AGILITY_MINIMUM = 4;
    public static final int PRECONDITION_ATTRIBUTE_CHARM_MINIMUM = 5;
    public static final int PRECONDITION_GAMEOBJECT_REQUIRED = 6;
    public static final int PRECONDITION_GAMEOBJECT_FORBIDDEN = 7;
    public static final int PRECONDITION_FACTION = 8;
    public static final int PRECONDITION_QUEST_UNDERWAY = 9;
    public static final int PRECONDITION_QUEST_COMPLETED = 10;

    public static final int ACTION_NONE = 0;
    //public static final int ACTION_GO_TO_EXCHANGE = 1; // Not needed.  We can assume it.
    public static final int ACTION_ACCEPT_QUEST = 2;
    public static final int ACTION_DROP_QUEST = 3;
    public static final int ACTION_COMPLETE_QUEST = 4;
    public static final int ACTION_REMOVE_GAMEOBJECT = 5;
    public static final int ACTION_BESTOW_GAMEOBJECT = 6;
    public static final int ACTION_FIGHT = 7;
    public static final int ACTION_OPEN_STORE = 8;
    public static final int ACTION_TELEPORT = 9;

    private Integer id;
    private String answer;
    private Integer answerToId; // What npc dialog does this answer answer?
    private Integer precondition;
    private Integer preconditionValue;
    private Integer action;
    private Integer actionValue;
    private Integer nextExchange; // Null if conversation ends

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
     * @return the answer
     */
    public String getAnswer() {
        return answer;
    }

    /**
     * @param answer the answer to set
     */
    public void setAnswer(String answer) {
        this.answer = answer;
    }

    /**
     * @return the precondition
     */
    public Integer getPrecondition() {
        return precondition;
    }

    /**
     * @param precondition the precondition to set
     */
    public void setPrecondition(Integer precondition) {
        this.precondition = precondition;
    }

    /**
     * @return the preconditionValue
     */
    public Integer getPreconditionValue() {
        return preconditionValue;
    }

    /**
     * @param preconditionValue the preconditionValue to set
     */
    public void setPreconditionValue(Integer preconditionValue) {
        this.preconditionValue = preconditionValue;
    }

    /**
     * @return the action
     */
    public Integer getAction() {
        return action;
    }

    /**
     * @param action the action to set
     */
    public void setAction(Integer action) {
        this.action = action;
    }

    /**
     * @return the actionValue
     */
    public Integer getActionValue() {
        return actionValue;
    }

    /**
     * @param actionValue the actionValue to set
     */
    public void setActionValue(Integer actionValue) {
        this.actionValue = actionValue;
    }

    /**
     * @return the answerTo
     */
    public Integer getAnswerToId() {
        return answerToId;
    }

    /**
     * @param answerTo the answerTo to set
     */
    public void setAnswerToId(Integer answerTo) {
        this.answerToId = answerTo;
    }

    /**
     * @return the nextExchange
     */
    public Integer getNextExchange() {
        return nextExchange;
    }

    /**
     * @param nextExchange the nextExchange to set
     */
    public void setNextExchange(Integer nextExchange) {
        this.nextExchange = nextExchange;
    }

}
