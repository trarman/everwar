/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class ConnectionPool {

    private static Logger log = Logger.getLogger(ConnectionPool.class.getName());

    private List<Connection> freeConnections;
    private List<Connection> usedConnections;

    private boolean healthy = false;

    private String jdbcurl;
    private String jdbcdriver;
    private String jdbcuser;
    private String jdbcpass;

    public ConnectionPool(String jdbcdriver, String jdbcurl, String jdbcuser, String jdbcpass) {
        log.info("Initializing Connection Pool");
        this.jdbcurl = jdbcurl;
        this.jdbcdriver = jdbcdriver;
        this.jdbcuser = jdbcuser;
        this.jdbcpass = jdbcpass;

        try {
            Class.forName(jdbcdriver).newInstance();
            healthy = true;
        } catch (InstantiationException ex) {
            Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionPool.class.getName()).log(Level.SEVERE, null, ex);
        }

        freeConnections = new ArrayList<Connection>();
        usedConnections = new ArrayList<Connection>();
        for (int i=0;i<3;i++) {
            freeConnections.add(getNewConnection());
        }
    }

    private Connection getNewConnection()
    {
        Connection con = null;
        if (healthy) {
            try {
                con = DriverManager.getConnection(jdbcurl, jdbcuser, jdbcpass);

                if (!con.isClosed()) {
                    log.info("Created New Connection to "+jdbcurl);
                } else {
                    log.severe("Failed to create New Connection to "+jdbcurl);
                    healthy=false;
                }
            } catch (Exception e) {
                log.log(Level.SEVERE, e.getMessage(), e);
            }
        }
        return con;
    }

    public Connection getConnection() {
        if (freeConnections.isEmpty()) {
            freeConnections.add(getNewConnection());
        }
        Connection result=freeConnections.get(0);
        try {
            if (!result.isClosed()) {
                usedConnections.add(result);
            } else {
                log.info("Connection was closed");
                // Try again
                return getConnection();
            }
        } catch (SQLException e) {
            log.log(Level.SEVERE, e.getMessage(), e);
        }
        return result;
    }

    public void recycleConnection(Connection con) {
        if (usedConnections.remove(con)) {
            freeConnections.add(con);
        } else {
            log.severe("Somehow recycled a connection not in use!");
        }
    }
}
