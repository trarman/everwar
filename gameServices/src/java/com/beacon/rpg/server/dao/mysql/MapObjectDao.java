/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.IMapObjectDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.MapObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
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
public class MapObjectDao implements IMapObjectDao, IValidationDao {

    private JdbcTemplate template;
    private Logger log = Logger.getLogger(MapObjectDao.class.getName());
    
    public MapObjectDao(DataSource datasource) {
        template = new JdbcTemplate(datasource);
    }
    
    public List<MapObject> getMapObjectsForZoneId(Integer zoneId) {
        String query = "SELECT * FROM mapObjects WHERE zoneId = ?";
        Object[] params = {zoneId};
        int[] types = {Types.INTEGER};
        List<MapObject> mapObjectList = (List<MapObject>) template.query(query, params, types, new MapObjectExtractor());
        return mapObjectList;
    }

    public MapObject getMapObjectById(Integer id) {
        String query = "SELECT * FROM mapObjects WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<MapObject> mapObjectList = (List<MapObject>) template.query(query, params, types, new MapObjectExtractor());
        if (mapObjectList!=null && mapObjectList.size()==1) {
            return mapObjectList.get(0);
        } else {
            log.warning("Unable to retrieve exactly 1 mapObject with id:"+String.valueOf(id));
            return null;
        }
    }

    public Integer addMapObject(MapObject object) {
        MapObjectCreator creator = new MapObjectCreator();
        creator.setInsertSql("insert into mapObjects " +
                "(type, zoneId, x, y, tileId, referenceId)" +
                " values(?,?,?,?,?,?)");
        creator.setMapObject(object);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public boolean updateMapObject(MapObject object) {
        String query = "UPDATE mapObjects set type=?, zoneId=?, x=?, y=?, tileId=?, referenceId=? where id=?";
        Object[] params = {object.getType(), object.getZoneId(), object.getX(),
            object.getY(), object.getTileId(), object.getReferenceId(), object.getId()};
        int[] types = {Types.INTEGER, Types.INTEGER, Types.INTEGER, Types.INTEGER,
            Types.INTEGER, Types.INTEGER, Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public boolean removeMapObjectById(Integer id) {
        String query = "DELETE FROM mapObjects WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS mapObjects "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "type INT," +
                "zoneId INT," +
                "x INT," +
                "y INT," +
                "tileId INT," +
                "referenceId INT)";
        template.execute(query);
    }

    private class MapObjectExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
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

    private class MapObjectCreator implements PreparedStatementCreator {

        private String insertSql = null;
        private MapObject mapObject = null;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setInt(1, mapObject.getType());
            ps.setInt(2, mapObject.getZoneId());
            ps.setInt(3, mapObject.getX());
            ps.setInt(4, mapObject.getY());
            ps.setInt(5, mapObject.getTileId());
            ps.setInt(6, mapObject.getReferenceId());
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param mapObject the mapObject to set
         */
        public void setMapObject(MapObject mapObject) {
            this.mapObject = mapObject;
        }

    }
}
