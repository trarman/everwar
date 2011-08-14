/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.RPGCharacter;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface ICharacterDao {

    public RPGCharacter getCharacterById(Integer id);

    public Integer addCharacter(RPGCharacter character);

    public boolean updateCharacter(RPGCharacter character);

    public boolean removeCharacterById(Integer id);

    public List<RPGCharacter> getCharactersForAccount(String account);

}
