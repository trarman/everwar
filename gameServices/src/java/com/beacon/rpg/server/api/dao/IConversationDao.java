/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.ConversationAnswer;
import com.beacon.rpg.server.types.ConversationExchange;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface IConversationDao {

    public List<ConversationExchange> getConversationStarters();
    
    public ConversationExchange getConversationExchangeById(Integer id);

    public List<ConversationAnswer> getConversationAnswersForId(Integer id);

    public Integer addConversationAnswerToId(Integer id, ConversationAnswer answer);

    public boolean removeConversationAnswerById(Integer id);

    public boolean removeConversationExchangeById(Integer id);

    public Integer addConversationExchange(ConversationExchange exchange);

    public boolean updateConversationExchange(ConversationExchange exchange);

    public boolean updateConversationAnswer(ConversationAnswer answer);

    public List<ConversationExchange> getWholeConversationStartingFromId(Integer id);
    
    // An orphan is a non-starter npc_dialog with no references from pc_dialog
    public boolean isExchangeOrphaned(Integer id);
}
