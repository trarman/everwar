/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class ZoneDao {

    private static Logger log = Logger.getLogger(ZoneDao.class.getName());

    private ConnectionPool pool;

    ZoneDao(ConnectionPool pool) {
        this.pool = pool;
    }

    public ZoneMap getZoneMapById(int id) {
        ZoneMap result = null;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from zoneMap where id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            result = extractZoneMapData(rs);
            log.info("Loaded " + result.getZoneName());
        } catch (SQLException ex) {
            Logger.getLogger(ZoneDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    private ZoneMap extractZoneMapData(ResultSet rs) throws SQLException {
        ZoneMap zoneMap = null;
        if (rs.next()) {
            zoneMap = new ZoneMap();
            zoneMap.setZoneId(rs.getInt("id"));
            zoneMap.setZoneName(rs.getString("name"));
            zoneMap.setWidth(rs.getInt("width"));
            zoneMap.setHeight(rs.getInt("height"));
            List<ZoneCell> mapData = convertBytesToMapData(rs.getBytes("mapData"));
            zoneMap.setMapData(mapData);
        }
        return zoneMap;
    }

    private List<ZoneCell> convertBytesToMapData(byte[] mapData) {
        ByteArrayInputStream bis = new ByteArrayInputStream(mapData);
        Object o = null;
        try {
            ObjectInputStream ois = new ObjectInputStream(bis);
            o = ois.readObject();
            ois.close();
        } catch (IOException e) {
            Logger.getLogger(this.getClass().getName()).log(Level.WARNING, "Error deserializing map data", e);
        } catch (ClassNotFoundException e) {
            Logger.getLogger(this.getClass().getName()).log(Level.WARNING, "Error deserializing map data", e);
        }
        List<Integer> tileList = (List<Integer>) o;
        List<ZoneCell> result = new ArrayList<ZoneCell>();
        if (tileList!=null) {
            Iterator<Integer> i = tileList.iterator();
            while (i.hasNext()) {
                ZoneCell cell = new ZoneCell();
                cell.setSurfaceLayerTileId(i.next());
                cell.setInteractiveLayerTileId(i.next());
                cell.setUpperLayerTileId(i.next());
                result.add(cell);
            }
        }
        return result;
    }

}
