/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.conversation;

import com.beacon.rpg.server.types.ConversationAnswer;
import com.beacon.rpg.server.types.ConversationExchange;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface IConversationService {

    @WebResult(name="starterList")
    public List<ConversationExchange> getConversationStarters();

    @WebResult(name="conversation")
    public List<ConversationExchange> getConversationById(
            @WebParam(name="id") Integer id);

    @WebResult(name="success")
    public boolean removeConversationById(
            @WebParam(name="id") Integer id);

    /*
     * Saves ONLY the conversation exchange (no responses) and returns
     * the id.  If pre-existing, the same id is returned.  If new, a new
     * id is returned.
     */
    @WebResult(name="id")
    public Integer saveConversationExchange(
            @WebParam(name="exchange") ConversationExchange exchange);

    /*
     * Saves ONLY this conversation answer and returns the id.  If
     * pre-existing, the same id is returned.  If new, a new id is returned.
     */
    @WebResult(name="id")
    public Integer saveConversationAnswer(
            @WebParam(name="answer") ConversationAnswer answer);
}
