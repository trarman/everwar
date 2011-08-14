/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.tile;

import com.beacon.rpg.server.api.dao.ITileDao;
import com.beacon.rpg.server.types.Tile;
import java.util.List;

/**
 *
 * @author cternent
 */
public class TileService implements ITileService{

    private ITileDao tileDao;

    public TileService(ITileDao tileDao) {
        this.tileDao = tileDao;
    }

    public List<Tile> getTilesByCategoryId(Integer categoryId) {
        return tileDao.getTilesByCategoryId(categoryId);
    }

    public Integer addTile(String name, Integer categoryId, byte[] imageData) {
        return tileDao.addTile(name, categoryId, imageData);
    }

    public void updateTileById(Integer id, String name, Integer categoryId, byte[] imageData) {
        tileDao.updateTileById(id, name, categoryId, imageData);
    }

    public Tile getTileById(Integer tileId) {
        return tileDao.getTileById(tileId);
    }

}
