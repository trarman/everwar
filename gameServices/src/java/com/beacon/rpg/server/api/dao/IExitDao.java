/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.Exit;

/**
 *
 * @author cternent
 */
public interface IExitDao {

    public Exit getExitById(Integer id);

    public Integer addExit(Exit exit);

    public boolean updateExit(Exit exit);

    public boolean removeExitById(Integer id);
    
}
