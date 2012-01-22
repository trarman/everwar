/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import com.beacon.rpg.server.types.Tile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class TileDao {

    private static Logger log = Logger.getLogger(TileDao.class.getName());

    private ConnectionPool pool;

    TileDao(ConnectionPool pool) {
        this.pool = pool;
    }

    public Tile getTileById(Integer id) {
        Tile tile = null;
        Connection con = null;
        try {
            con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from tile where id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            List<Tile> tileList = extractTiles(rs);
            if (tileList!=null && tileList.size()==1) {
                tile = tileList.get(0);
                log.info("Loaded " + tile.getName());
            } else {
                log.severe("Failed to retrieve exactly 1 character with id:"+String.valueOf(id));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TileDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            pool.recycleConnection(con);
        }
        return tile;
    }

    private List<Tile> extractTiles(ResultSet rs) throws SQLException {
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
