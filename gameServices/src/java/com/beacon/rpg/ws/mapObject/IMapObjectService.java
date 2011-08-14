package com.beacon.rpg.ws.mapObject;

import com.beacon.rpg.server.types.MapObject;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author cternent
 */
@WebService
public interface IMapObjectService {

    @WebResult(name="mapObjectList")
    public List<MapObject> getMapObjectsForZoneId(
            @WebParam(name="zoneId") Integer zoneId);

    @WebResult(name="mapObjectId")
    public Integer addMapObject(
            @WebParam(name="mapObject") MapObject mapObject);

    @WebResult(name="success")
    public boolean removeMapObjectById(
            @WebParam(name="mapObjectId") Integer id);

    @WebResult(name="success")
    public boolean updateMapObject(
            @WebParam(name="mapObject") MapObject mapObject);

    @WebResult(name="mapObject")
    public MapObject getMapObjectById(
            @WebParam(name="id") Integer mapObjectId);
    
}
