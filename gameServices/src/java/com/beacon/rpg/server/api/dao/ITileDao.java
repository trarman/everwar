/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.api.dao;

import com.beacon.rpg.server.types.Tile;
import java.util.List;

/**
 *
 * @author cternent
 */
public interface ITileDao {

    /**
     * gets a specific tile by its id
     * @param id
     * @return
     */
    public Tile getTileById(int id);

    /**
     * adds a new tile to the repository and returns its id
     * @param name
     * @param categoryId
     * @param imageData
     * @return
     */
    public int addTile(String name, int categoryId, byte[] imageData);

    /**
     * Allows you to update everything (except id) about a specific tile
     * @param id
     * @param name
     * @param categoryId
     * @param imageData
     */
    public void updateTileById(int id, String name, int categoryId, byte[] imageData);

    /**
     * Returns all the Tiles in a given category
     * @param categoryId
     * @return
     */
    public List<Tile> getTilesByCategoryId(int categoryId);

}
