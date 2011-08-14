/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.map;

import com.beacon.rpg.server.types.Exit;
import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import com.beacon.rpg.server.types.ZoneMapListItem;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface IZoneMapService {

    @WebResult(name="zoneList")
    public List<ZoneMapListItem> getZones();
    
    @WebResult(name="zoneMap")
    public ZoneMap getZoneMapById(
            @WebParam(name="id") Integer id);

    @WebResult(name="id")
    public Integer addZoneMap(
            @WebParam(name="name") String name,
            @WebParam(name="width") Integer width,
            @WebParam(name="height") Integer height,
            @WebParam(name="music") String music,
            @WebParam(name="mapData") List<ZoneCell> mapData);

    @WebResult(name="success")
    public boolean updateZoneMapById(
            @WebParam(name="id") Integer id,
            @WebParam(name="name") String name,
            @WebParam(name="width") Integer width,
            @WebParam(name="height") Integer height,
            @WebParam(name="music") String music,
            @WebParam(name="mapData") List<ZoneCell> mapData);

}
