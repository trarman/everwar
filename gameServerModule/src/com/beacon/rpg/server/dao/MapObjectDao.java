/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import com.beacon.rpg.server.types.MapObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class MapObjectDao {

    private static Logger log = Logger.getLogger(MapObjectDao.class.getName());

    private ConnectionPool pool;

    MapObjectDao(ConnectionPool pool) {
        this.pool = pool;
    }

    public List<MapObject> getMapObjectsForZoneId(Integer zoneId) {
        List<MapObject> mapObjectList = null;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from mapObjects where zoneId=?");
            stmt.setInt(1, zoneId);
            ResultSet rs = stmt.executeQuery();
            mapObjectList = extractMapObjects(rs);
        } catch (SQLException ex) {
            log.severe(ex.getMessage());
        }
        return mapObjectList;
    }

    private List<MapObject> extractMapObjects(ResultSet rs) throws SQLException {
        List<MapObject> mapObjectList = new ArrayList<MapObject>();
        while (rs.next()) {
            MapObject mapObject = new MapObject();
            mapObject.setId(rs.getInt("id"));
            mapObject.setType(rs.getInt("type"));
            mapObject.setZoneId(rs.getInt("zoneId"));
            mapObject.setX(rs.getInt("x"));
            mapObject.setY(rs.getInt("y"));
            mapObject.setTileId(rs.getInt("tileId"));
            mapObject.setReferenceId(rs.getInt("referenceId"));
            mapObjectList.add(mapObject);
        }
        return mapObjectList;
    }

}
