/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.MapObject;
import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import com.beacon.rpg.server.types.ZoneMapListItem;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface IZoneMapDao {

    public ZoneMap getZoneMapById(int id);

    public int addZoneMap(String zoneName, int width, int height, String music, List<ZoneCell> mapData);

    public void lockZoneMapById(int id);

    public void updateZoneMapById(int id, String zoneName, int width, int height, String music, List<ZoneCell> mapData);

    public List<ZoneMapListItem> getZones();
    
}
