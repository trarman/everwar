/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.map;

import com.beacon.rpg.server.api.dao.IZoneMapDao;
import com.beacon.rpg.server.types.Exit;
import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import com.beacon.rpg.server.types.ZoneMapListItem;
import java.util.List;

/**
 *
 * @author cternent
 */
public class ZoneMapService implements IZoneMapService{

    private IZoneMapDao dao;

    public ZoneMapService(IZoneMapDao dao) {
        this.dao = dao;
    }

    public ZoneMap getZoneMapById(Integer id) {
        return dao.getZoneMapById(id);
    }

    public Integer addZoneMap(String name, Integer width, Integer height, String music, List<ZoneCell> mapData) {
        return dao.addZoneMap(name, width, height, music, mapData);
    }

    public boolean updateZoneMapById(Integer id, String name, Integer width, Integer height, String music, List<ZoneCell> mapData) {
        boolean success=false;
        dao.updateZoneMapById(id, name, width, height, music, mapData);
        success=true;
        return success;
    }

    public List<ZoneMapListItem> getZones() {
        return dao.getZones();
    }

}
