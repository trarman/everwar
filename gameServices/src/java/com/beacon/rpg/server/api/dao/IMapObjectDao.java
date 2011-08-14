/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.MapObject;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface IMapObjectDao {

    public List<MapObject> getMapObjectsForZoneId(Integer zoneId);

    public MapObject getMapObjectById(Integer id);

    public Integer addMapObject(MapObject object);

    public boolean updateMapObject(MapObject object);

    public boolean removeMapObjectById(Integer id);
    
}
