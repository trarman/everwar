/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.npc;

import com.beacon.rpg.server.types.NPCCharacter;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface INPCService {

    @WebResult(name="npc")
    public NPCCharacter getNPCById(
            @WebParam(name="id") Integer id);

    @WebResult(name="id")
    public Integer addNPC(
            @WebParam(name="npc") NPCCharacter npc);

    @WebResult(name="success")
    public boolean updateNPC(
            @WebParam(name="npc") NPCCharacter npc);

    @WebResult(name="success")
    public boolean removeNPCById(
            @WebParam(name="id") Integer id);

    @WebResult(name="npcList")
    public List<NPCCharacter> getNPCList();
}
