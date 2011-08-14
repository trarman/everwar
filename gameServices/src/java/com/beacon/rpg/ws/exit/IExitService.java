/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.exit;

import com.beacon.rpg.server.types.Exit;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface IExitService {

    @WebResult(name="exit")
    public Exit getExitById(
            @WebParam(name="id") Integer id);

    @WebResult(name="id")
    public Integer addExit(
            @WebParam(name="exit") Exit exit);

    @WebResult(name="success")
    public boolean updateExit(
            @WebParam(name="exit") Exit exit);

    @WebResult(name="success")
    public boolean removeExitById(
            @WebParam(name="id") Integer id);

}
