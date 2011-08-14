/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.character;

import com.beacon.rpg.server.api.dao.ICharacterDao;
import com.beacon.rpg.server.types.RPGCharacter;
import java.util.List;

/**
 *
 * @author cternent
 */
public class CharacterService implements ICharacterService {

    private ICharacterDao characterDao;

    public CharacterService(ICharacterDao characterDao) {
        this.characterDao = characterDao;
    }

    public RPGCharacter getCharacterById(Integer id) {
        return characterDao.getCharacterById(id);
    }

    public List<RPGCharacter> getCharactersForAccount(String account) {
        return characterDao.getCharactersForAccount(account);
    }

    public boolean updateCharacter(RPGCharacter character) {
        return characterDao.updateCharacter(character);
    }

    public boolean removeCharacterById(Integer id) {
        return characterDao.removeCharacterById(id);
    }

    public Integer addCharacter(RPGCharacter character) {
        return characterDao.addCharacter(character);
    }

}
