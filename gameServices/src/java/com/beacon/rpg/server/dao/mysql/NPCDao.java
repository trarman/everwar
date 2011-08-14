/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.INPCDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.NPCCharacter;
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
public class NPCDao implements INPCDao, IValidationDao {

    private JdbcTemplate template;
    private Logger log = Logger.getLogger(NPCDao.class.getName());

    public NPCDao(DataSource datasource) {
        template = new JdbcTemplate(datasource);
    }

    public NPCCharacter getNPCById(Integer id) {
        String query = "SELECT * FROM npc WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<NPCCharacter> npcList = (List<NPCCharacter>) template.query(query, params, types, new NPCExtractor());
        if (npcList!=null && npcList.size()==1) {
            return npcList.get(0);
        } else {
            log.warning("Unable to retrieve exactly 1 npc with id:"+String.valueOf(id));
            return null;
        }
    }

    public List<NPCCharacter> getNPCList() {
        String query = "SELECT * FROM npc order by name";
        List<NPCCharacter> npcList = (List<NPCCharacter>) template.query(query, new NPCExtractor());
        return npcList;
    }

    public Integer addNPC(NPCCharacter npc) {
        NPCCreator creator = new NPCCreator();
        creator.setInsertSql("insert into npc " +
                "(name, observation, strength, intelligence, agility, charm," +
                "faction, vendorId, conversationId)" +
                " values(?,?,?,?,?,?,?,?,?)");
        creator.setNPC(npc);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public boolean updateNPC(NPCCharacter npc) {
        String query = "UPDATE npc set name=?, observation=?, strength=?," +
                " intelligence=?, agility=?, charm=?, faction=?," +
                " vendorId=?, conversationId=? where id=?";
        Object[] params = {npc.getName(), npc.getObservation(), npc.getStrength(),
                npc.getIntelligence(), npc.getAgility(), npc.getCharm(),
                npc.getFaction(), npc.getVendorStore(), npc.getConversationStart(),
                npc.getId()};
        int[] types = {Types.VARCHAR, Types.INTEGER, Types.INTEGER,
                Types.INTEGER, Types.INTEGER, Types.INTEGER,
                Types.INTEGER, Types.INTEGER, Types.INTEGER,
                Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public boolean removeNPCById(Integer id) {
        String query = "DELETE FROM npc WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS npc "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "name VARCHAR(60)," +
                "observation INT," +
                "strength INT," +
                "intelligence INT," +
                "agility INT," +
                "charm INT," +
                "faction INT," +
                "vendorId INT," +
                "conversationId INT)";
        template.execute(query);
    }

    private class NPCExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<NPCCharacter> npcList = new ArrayList<NPCCharacter>();
            while (rs.next()) {
                NPCCharacter npc = new NPCCharacter();
                npc.setId(rs.getInt("id"));
                npc.setName(rs.getString("name"));
                npc.setObservation(rs.getInt("observation"));
                npc.setStrength(rs.getInt("strength"));
                npc.setIntelligence(rs.getInt("intelligence"));
                npc.setAgility(rs.getInt("agility"));
                npc.setCharm(rs.getInt("charm"));
                npc.setFaction(rs.getInt("faction"));
                npc.setVendorStore(rs.getInt("vendorId"));
                npc.setConversationStart(rs.getInt("conversationId"));
                npcList.add(npc);
            }
            return npcList;
        }

    }

    private class NPCCreator implements PreparedStatementCreator {

        private String insertSql = null;
        private NPCCharacter npc = null;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            /*    "(name, observation, strength, intelligence, agility, charm," +
                "faction, vendorId, conversationId)" */
            ps.setString(1, npc.getName());
            ps.setInt(2, npc.getObservation());
            ps.setInt(3, npc.getStrength());
            ps.setInt(4, npc.getIntelligence());
            ps.setInt(5, npc.getAgility());
            ps.setInt(6, npc.getCharm());
            ps.setInt(7, npc.getFaction());
            ps.setInt(8, npc.getVendorStore());
            ps.setInt(9, npc.getConversationStart());
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
        public void setNPC(NPCCharacter npc) {
            this.npc = npc;
        }

    }

}
