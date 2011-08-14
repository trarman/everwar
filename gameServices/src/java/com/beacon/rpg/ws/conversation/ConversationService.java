/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.conversation;

import com.beacon.rpg.server.api.dao.IConversationDao;
import com.beacon.rpg.server.types.ConversationAnswer;
import com.beacon.rpg.server.types.ConversationExchange;
import java.util.List;

/**
 *
 * @author cternent
 */
public class ConversationService implements IConversationService {

    private IConversationDao dao;

    public ConversationService(IConversationDao dao) {
        this.dao = dao;
    }

    public List<ConversationExchange> getConversationStarters() {
        return dao.getConversationStarters();
    }

    public List<ConversationExchange> getConversationById(Integer id) {
        return dao.getWholeConversationStartingFromId(id);
    }

    public boolean removeConversationById(Integer id) {
        return dao.removeConversationExchangeById(id);
    }

    public Integer saveConversationExchange(ConversationExchange exchange) {
        Integer id = exchange.getId();
        if (id !=null && id>0) {
            dao.updateConversationExchange(exchange);
        } else {
            id = dao.addConversationExchange(exchange);
        }
        return id;
    }

    public Integer saveConversationAnswer(ConversationAnswer answer) {
        Integer id = answer.getId();
        if (id !=null && id>0) {
            dao.updateConversationAnswer(answer);
        } else {
            id = dao.addConversationAnswerToId(answer.getAnswerToId(), answer);
        }
        return id;
    }

}
