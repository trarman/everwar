/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.ICharacterDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.RPGCharacter;
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
public class CharacterDao implements ICharacterDao, IValidationDao {

    private JdbcTemplate template;
    private static Logger log = Logger.getLogger(CharacterDao.class.getName());
    
    public CharacterDao(DataSource datasource) {
        template = new JdbcTemplate(datasource);
    }
    
    public RPGCharacter getCharacterById(Integer id) {
        String query = "SELECT * FROM characters WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<RPGCharacter> characterList = (List<RPGCharacter>) template.query(query, params, types, new CharacterExtractor());
        if (characterList!=null && characterList.size()==1) {
            return characterList.get(0);
        } else {
            log.warning("Could not retrieve exactly 1 character for id:"+String.valueOf(id));
            return null;
        }
    }

    public Integer addCharacter(RPGCharacter character) {
        CharacterCreator creator = new CharacterCreator();
        creator.setInsertSql("insert into characters " +
                "(name, account, faction, health, observation, strength, intelligence, agility, charm, location, zoneId, x, y, avatar)" +
                " values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        creator.setCharacter(character);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public boolean updateCharacter(RPGCharacter character) {
        String query = "UPDATE characters set health=?, observation=?, strength=?, intelligence=?, agility=?," +
                " charm=?, location=?, zoneId=?, x=?, y=? where id=?";
        Object[] params = {character.getHealth(), character.getObservation(), character.getStrength(),
            character.getIntelligence(), character.getAgility(), character.getCharm(),
            character.getLocation(), character.getZoneId(), character.getX(), character.getY(),
            character.getCharacterId()};
        int[] types = {Types.INTEGER, Types.INTEGER, Types.INTEGER, Types.INTEGER, Types.INTEGER,
            Types.INTEGER, Types.VARCHAR, Types.INTEGER, Types.INTEGER, Types.INTEGER, Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public boolean removeCharacterById(Integer id) {
        String query = "DELETE FROM characters WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public List<RPGCharacter> getCharactersForAccount(String account) {
        String query = "SELECT * FROM characters WHERE account = ?";
        Object[] params = {account};
        int[] types = {Types.VARCHAR};
        List<RPGCharacter> characterList = (List<RPGCharacter>) template.query(query, params, types, new CharacterExtractor());
        return characterList;
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS characters "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "name VARCHAR(100)," +
                "account VARCHAR(100)," +
                "faction VARCHAR(30)," +
                "health INT," +
                "observation INT," +
                "strength INT," +
                "intelligence INT," +
                "agility INT," +
                "charm INT," +
                "location VARCHAR(100)," +
                "zoneId INT," +
                "x INT," +
                "y INT," +
                "avatar BLOB)";
        template.execute(query);
    }

    private class CharacterExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
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
                character.setFaction(rs.getString("faction"));
                characterList.add(character);
            }
            return characterList;
        }

    }

    private class CharacterCreator implements PreparedStatementCreator {

        private String insertSql;
        private RPGCharacter character;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            //    "(name, account, faction, health, observation, strength, intelligence, agility, charm, location, x, y, avatar)" +
            ps.setString(1, character.getName());
            ps.setString(2, character.getAccount());
            ps.setString(3, character.getFaction());
            ps.setInt(4, character.getHealth());
            ps.setInt(5, character.getObservation());
            ps.setInt(6, character.getStrength());
            ps.setInt(7, character.getIntelligence());
            ps.setInt(8, character.getAgility());
            ps.setInt(9, character.getCharm());
            ps.setString(10, character.getLocation());
            ps.setInt(11, character.getZoneId());
            ps.setInt(12, character.getX());
            ps.setInt(13, character.getY());
            ps.setBytes(14, character.getAvatar());
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param character the character to set
         */
        public void setCharacter(RPGCharacter character) {
            this.character = character;
        }
    }
}
