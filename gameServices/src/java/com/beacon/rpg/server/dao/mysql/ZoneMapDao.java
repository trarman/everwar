/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.api.dao.IZoneMapDao;
import com.beacon.rpg.server.types.Tile;
import com.beacon.rpg.server.types.ZoneCell;
import com.beacon.rpg.server.types.ZoneMap;
import com.beacon.rpg.server.types.ZoneMapListItem;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

/**
 *
 * @author cternent
 */
public class ZoneMapDao implements IZoneMapDao, IValidationDao{

    private JdbcTemplate template;

    public ZoneMapDao(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public ZoneMap getZoneMapById(int id) {
        String query = "SELECT * FROM zoneMap where id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        ZoneMap result = (ZoneMap) template.query(query, params, types, new ZoneMapExtractor());
        return result;
    }

    public List<ZoneMapListItem> getZones() {
        String query = "SELECT id,name FROM zoneMap order by name";
        List<ZoneMapListItem> result = (List<ZoneMapListItem>) template.query(query, new ZoneListExtractor());
        return result;
    }

    public int addZoneMap(String zoneName, int width, int height, String music, List<ZoneCell> mapData) {
        ZoneMapCreator creator = new ZoneMapCreator();
        creator.setInsertSql("insert into zoneMap (name, width, height, music, mapData) values(?,?,?,?,?)");
        creator.setName(zoneName);
        creator.setWidth(width);
        creator.setHeight(height);
        creator.setMusic(music);
        creator.setMapData(convertMapDataToBytes(mapData));
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public void lockZoneMapById(int id) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void updateZoneMapById(int id, String zoneName, int width, int height, String music, List<ZoneCell> mapData) {
        String query = "UPDATE zoneMap SET name=?,width=?,height=?,music=?,mapData=? WHERE id=?";
        Object[] params = {zoneName, width, height, music, convertMapDataToBytes(mapData),id};
        int[] types = {Types.VARCHAR, Types.INTEGER, Types.INTEGER, Types.VARCHAR, Types.BLOB, Types.INTEGER};
        template.update(query, params, types);
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS zoneMap "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "name VARCHAR(100)," +
                "width INT NOT NULL," +
                "height INT NOT NULL," +
                "music TEXT," +
                "mapData BLOB)";
        template.execute(query);
    }

    private Integer getTileId(Tile tile) {
        int result = -1;
        if (tile!=null) {
            result = tile.getId();
        }
        return Integer.valueOf(result);
    }

    private byte[] convertMapDataToBytes(List<ZoneCell> mapData) {
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        List<Integer> tileList = new ArrayList<Integer>(mapData.size()*3);
        for (ZoneCell cell:mapData) {
            tileList.add(cell.getSurfaceLayerTileId());
            tileList.add(cell.getInteractiveLayerTileId());
            tileList.add(cell.getUpperLayerTileId());
        }
        try {
            ObjectOutputStream oos = new ObjectOutputStream(bos);
            oos.writeObject(tileList);
            oos.close();
        } catch (IOException e) {
            Logger.getLogger(this.getClass().getName()).log(Level.WARNING, "Error serializing map data", e);
        }
        return bos.toByteArray();
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

    private class ZoneMapExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            ZoneMap zoneMap = null;
            if (rs.next()) {
                zoneMap = new ZoneMap();
                zoneMap.setZoneId(rs.getInt("id"));
                zoneMap.setZoneName(rs.getString("name"));
                zoneMap.setWidth(rs.getInt("width"));
                zoneMap.setHeight(rs.getInt("height"));
                zoneMap.setMusic(rs.getString("music"));
                List<ZoneCell> mapData = convertBytesToMapData(rs.getBytes("mapData"));
                zoneMap.setMapData(mapData);
            }
            return zoneMap;
        }

    }

    private class ZoneListExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<ZoneMapListItem> zoneMapList = new ArrayList<ZoneMapListItem>();

            while (rs.next()) {
                ZoneMapListItem zoneMap = new ZoneMapListItem();
                zoneMap.setId(rs.getInt("id"));
                zoneMap.setName(rs.getString("name"));
                zoneMapList.add(zoneMap);
            }
            return zoneMapList;
        }

    }

    private class ZoneMapCreator implements PreparedStatementCreator {

        private String insertSql;
        private String name;
        private int width;
        private int height;
        private String music;
        private byte[] mapData;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setString(1, name);
            ps.setInt(2, width);
            ps.setInt(3, height);
            ps.setString(4, music);
            ps.setBytes(5, mapData);
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param name the name to set
         */
        public void setName(String name) {
            this.name = name;
        }

        /**
         * @param width the width to set
         */
        public void setWidth(int width) {
            this.width = width;
        }

        /**
         * @param height the height to set
         */
        public void setHeight(int height) {
            this.height = height;
        }

        /**
         * @param mapData the mapData to set
         */
        public void setMapData(byte[] mapData) {
            this.mapData = mapData;
        }

        /**
         * @param music the music to set
         */
        public void setMusic(String music) {
            this.music = music;
        }
    }
}
