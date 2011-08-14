/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.tile;

import com.beacon.rpg.server.types.Tile;
import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface ITileService {

    @WebResult(name="tileList")
    public List<Tile> getTilesByCategoryId(
            @WebParam(name="categoryId") Integer categoryId);
    
    @WebResult(name="id")
    public Integer addTile(
            @WebParam(name="name") String name,
            @WebParam(name="categoryId") Integer categoryId,
            @WebParam(name="imageData") byte[] imageData);

    @WebMethod
    public void updateTileById(
            @WebParam(name="id") Integer id,
            @WebParam(name="name") String name,
            @WebParam(name="categoryId") Integer categoryId,
            @WebParam(name="imageData") byte[] imageData);

    @WebResult(name="tile")
    public Tile getTileById(
            @WebParam(name="tileId") Integer tileId);
    
}
