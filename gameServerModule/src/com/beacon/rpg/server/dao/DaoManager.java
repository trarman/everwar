/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class DaoManager {

    private static Logger log = Logger.getLogger(DaoManager.class.getName());
    private String jdbcurl;
    private String jdbcdriver;
    private String jdbcuser;
    private String jdbcpass;

    private ConnectionPool pool;
    private ZoneDao zoneDao;
    private CharacterDao characterDao;
    private MapObjectDao mapObjectDao;
    private NPCDao npcDao;
    private TileDao tileDao;

    private static DaoManager instance;

    public static DaoManager getInstance() {
        if (instance==null) {
            instance = new DaoManager();
        }
        return instance;
    }

    private ConnectionPool getConnectionPool() {
        if (pool==null) {
            if (jdbcurl==null || jdbcdriver==null || jdbcuser==null || jdbcpass==null) {
                log.severe("Attempt to access Connection Pool before setting all jdbc values!");
            } else {
                pool = new ConnectionPool(jdbcdriver, jdbcurl, jdbcuser, jdbcpass);
            }
        }
        return pool;
    }

    public ZoneDao getZoneDao() {
        if (zoneDao==null) {
            zoneDao = new ZoneDao(getConnectionPool());
        }
        return zoneDao;
    }

    public CharacterDao getCharacterDao() {
        if (characterDao==null) {
            characterDao = new CharacterDao(getConnectionPool());
        }
        return characterDao;
    }

    public MapObjectDao getMapObjectDao() {
        if (mapObjectDao==null) {
            mapObjectDao = new MapObjectDao(getConnectionPool());
        }
        return mapObjectDao;
    }

    public NPCDao getNPCDao() {
        if (npcDao==null) {
            npcDao = new NPCDao(getConnectionPool());
        }
        return npcDao;
    }

    public TileDao getTileDao() {
        if (tileDao==null) {
            tileDao = new TileDao(getConnectionPool());
        }
        return tileDao;
    }
    
    /**
     * @param jdbcurl the jdbcurl to set
     */
    public void setJdbcurl(String jdbcurl) {
        this.jdbcurl = jdbcurl;
    }

    /**
     * @param jdbcdriver the jdbcdriver to set
     */
    public void setJdbcdriver(String jdbcdriver) {
        this.jdbcdriver = jdbcdriver;
    }

    /**
     * @param jdbcuser the jdbcuser to set
     */
    public void setJdbcuser(String jdbcuser) {
        this.jdbcuser = jdbcuser;
    }

    /**
     * @param jdbcpass the jdbcpass to set
     */
    public void setJdbcpass(String jdbcpass) {
        this.jdbcpass = jdbcpass;
    }


}
