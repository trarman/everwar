/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.npc;

import com.beacon.rpg.server.api.dao.INPCDao;
import com.beacon.rpg.server.types.NPCCharacter;
import java.util.List;

/**
 *
 * @author cternent
 */
public class NPCService implements INPCService {

    private INPCDao dao;

    public NPCService(INPCDao dao) {
        this.dao = dao;
    }

    public NPCCharacter getNPCById(Integer id) {
        return dao.getNPCById(id);
    }

    public Integer addNPC(NPCCharacter npc) {
        return dao.addNPC(npc);
    }

    public boolean updateNPC(NPCCharacter npc) {
        return dao.updateNPC(npc);
    }

    public boolean removeNPCById(Integer id) {
        return dao.removeNPCById(id);
    }

    public List<NPCCharacter> getNPCList() {
        return dao.getNPCList();
    }
}
