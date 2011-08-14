/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import com.beacon.rpg.server.types.RPGCharacter;
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
public class CharacterDao {

    private static Logger log = Logger.getLogger(CharacterDao.class.getName());

    private ConnectionPool pool;

    CharacterDao(ConnectionPool pool) {
        this.pool = pool;
    }

    public RPGCharacter getCharacterById(Integer id) {
        RPGCharacter character = null;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from characters where id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            List<RPGCharacter> characterList = extractCharacters(rs);
            if (characterList!=null && characterList.size()==1) {
                character = characterList.get(0);
                log.info("Loaded " + character.getName());
            } else {
                log.severe("Failed to retrieve exactly 1 character with id:"+String.valueOf(id));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CharacterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return character;
    }

    public List<RPGCharacter> getCharactersForAccount(String account) {
        List<RPGCharacter> characters = null;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from characters where account=?");
            stmt.setString(1, account);
            ResultSet rs = stmt.executeQuery();
            characters = extractCharacters(rs);
        } catch (SQLException ex) {
            Logger.getLogger(CharacterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return characters;
    }

    public boolean updateCharacter(RPGCharacter character) {
        boolean success=false;
        try {
            Connection con = pool.getConnection();
            String query = "UPDATE characters set health=?, observation=?, strength=?, intelligence=?, agility=?," +
                " charm=?, location=?, zoneId=?, x=?, y=? where id=?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setInt(1, character.getHealth());
            stmt.setInt(2, character.getObservation());
            stmt.setInt(3, character.getStrength());
            stmt.setInt(4, character.getIntelligence());
            stmt.setInt(5, character.getAgility());
            stmt.setInt(6, character.getCharm());
            stmt.setString(7, character.getLocation());
            stmt.setInt(8, character.getZoneId());
            stmt.setInt(9, character.getX());
            stmt.setInt(10, character.getY());
            stmt.setInt(11, character.getCharacterId());
            stmt.executeUpdate();
            success=true;
        } catch (SQLException ex) {
            Logger.getLogger(CharacterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return success;
    }

    public boolean removeCharacterById(Integer id) {
        boolean success=false;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("delete from characters where id=?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
            success=true;
        } catch (SQLException ex) {
            Logger.getLogger(CharacterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return success;
    }

    public Integer createCharacter(RPGCharacter character) {
        Integer id=null;
        try {
            Connection con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("insert into characters set x=y etc where id=?");
            stmt.setInt(10, character.getCharacterId());
            stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CharacterDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    private List<RPGCharacter> extractCharacters(ResultSet rs) throws SQLException {
        List<RPGCharacter> characterList =  new ArrayList<RPGCharacter>();
        while (rs.next()) {
            RPGCharacter character = new RPGCharacter();
            character.setAccount(rs.getString("account"));
            character.setAgility(rs.getInt("agility"));
            character.setCharacterId(rs.getInt("id"));
            character.setCharm(rs.getInt("charm"));
            character.setAvatar(rs.getBytes("avatar"));
            character.setHealth(rs.getInt("health"));
            character.setIntelligence(rs.getInt("intelligence"));
            character.setLocation(rs.getString("location"));
            character.setZoneId(rs.getInt("zoneId"));
            character.setName(rs.getString("name"));
            character.setObservation(rs.getInt("observation"));
            character.setStrength(rs.getInt("strength"));
            character.setX(rs.getInt("x"));
            character.setY(rs.getInt("y"));
            characterList.add(character);
        }
        return characterList;
    }

}
