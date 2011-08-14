/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.NPCCharacter;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface INPCDao {

    public NPCCharacter getNPCById(Integer id);

    public Integer addNPC(NPCCharacter npc);

    public boolean removeNPCById(Integer id);

    public boolean updateNPC(NPCCharacter npc);

    public List<NPCCharacter> getNPCList();
    
}
