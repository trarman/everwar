/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.mapObject;

import com.beacon.rpg.server.api.dao.IMapObjectDao;
import com.beacon.rpg.server.types.MapObject;
import java.util.List;

/**
 *
 * @author cternent
 */
public class MapObjectService implements IMapObjectService {

    private IMapObjectDao dao;

    public MapObjectService(IMapObjectDao dao) {
        this.dao = dao;
    }
    
    public List<MapObject> getMapObjectsForZoneId(Integer zoneId) {
        return dao.getMapObjectsForZoneId(zoneId);
    }

    public Integer addMapObject(MapObject mapObject) {
        return dao.addMapObject(mapObject);
    }

    public boolean removeMapObjectById(Integer id) {
        return dao.removeMapObjectById(id);
    }

    public boolean updateMapObject(MapObject mapObject) {
        return dao.updateMapObject(mapObject);
    }

    public MapObject getMapObjectById(Integer mapObjectId) {
        return dao.getMapObjectById(mapObjectId);
    }

}
