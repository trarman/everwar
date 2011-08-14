/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.ITileDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.Tile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
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
public class TileDao implements ITileDao, IValidationDao{

    private JdbcTemplate template;

    public TileDao(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public Tile getTileById(int id) {
        String query = "SELECT * FROM tile WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<Tile> tiles = (List<Tile>) template.query(query, params, types, new TileExtractor());
        if (tiles!=null && ! tiles.isEmpty()) {
            return tiles.get(0);
        } else {
            return null;
        }
    }

    public int addTile(String name, int categoryId, byte[] imageData) {
        TileCreator tileCreator = new TileCreator();
        tileCreator.setInsertSql("insert into tile (name, categoryId, imageData) values(?,?,?)");
        tileCreator.setName(name);
        tileCreator.setCategoryId(categoryId);
        tileCreator.setImageData(imageData);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(tileCreator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public void updateTileById(int id, String name, int categoryId, byte[] imageData) {
        String query = "UPDATE tile SET name = ?, categoryId = ?, imageData = ? " +
                "WHERE id = ?";
        Object[] params = {name, categoryId, imageData, id};
        int[] types = {Types.VARCHAR, Types.INTEGER, Types.BLOB, Types.INTEGER};
        template.update(query, params, types);
    }

    public List<Tile> getTilesByCategoryId(int categoryId) {
        String query = "SELECT * FROM tile WHERE categoryId = ? order by name";
        Object[] params = {categoryId};
        int[] types = {Types.INTEGER};
        List<Tile> tiles = (List<Tile>) template.query(query, params, types, new TileExtractor());
        return tiles;
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS tile "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "name VARCHAR(100)," +
                "categoryId INT NOT NULL," +
                "imageData BLOB)";
        template.execute(query);
    }

    private class TileExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<Tile> tileList = new ArrayList<Tile>();
            while (rs.next()) {
                Tile tile = new Tile();
                tile.setId(rs.getInt("id"));
                tile.setName(rs.getString("name"));
                tile.setCategoryId(rs.getInt("categoryId"));
                tile.setImageData(rs.getBytes("imageData"));
                tileList.add(tile);
            }
            return tileList;
        }
        
    }

    private class TileCreator implements PreparedStatementCreator {

        private String insertSql;
        private String name;
        private int categoryId;
        private byte[] imageData;
        
        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setString(1, name);
            ps.setInt(2, categoryId);
            ps.setBytes(3, imageData);
            return ps;
        }

        /**
         * @param name the name to set
         */
        public void setName(String name) {
            this.name = name;
        }

        /**
         * @param categoryId the categoryId to set
         */
        public void setCategoryId(int categoryId) {
            this.categoryId = categoryId;
        }

        /**
         * @param imageData the imageData to set
         */
        public void setImageData(byte[] imageData) {
            this.imageData = imageData;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }
        
    }
}
