/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.character;

import com.beacon.rpg.server.types.RPGCharacter;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface ICharacterService {

    @WebResult(name="character")
    public RPGCharacter getCharacterById(
            @WebParam(name="id") Integer id);

    @WebResult(name="characters")
    public List<RPGCharacter> getCharactersForAccount(
            @WebParam(name="account") String account);

    @WebResult(name="success")
    public boolean updateCharacter(
            @WebParam(name="character") RPGCharacter character);

    @WebResult(name="success")
    public boolean removeCharacterById(
            @WebParam(name="id") Integer id);

    @WebResult(name="id")
    public Integer addCharacter(
            @WebParam(name="character") RPGCharacter character);
    
}
