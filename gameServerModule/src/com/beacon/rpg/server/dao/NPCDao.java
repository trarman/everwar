/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao;

import com.beacon.rpg.server.types.NPCCharacter;
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
public class NPCDao {

    private static Logger log = Logger.getLogger(NPCDao.class.getName());

    private ConnectionPool pool;

    NPCDao(ConnectionPool pool) {
        this.pool = pool;
    }

    public NPCCharacter getNpcById(Integer id) {
        NPCCharacter character = null;
        Connection con = null;
        try {
            con = pool.getConnection();
            PreparedStatement stmt = con.prepareStatement("select * from npc where id=?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            List<NPCCharacter> characterList = extractCharacters(rs);
            if (characterList!=null && characterList.size()==1) {
                character = characterList.get(0);
                log.info("Loaded " + character.getName());
            } else {
                log.severe("Failed to retrieve exactly 1 npc with id:"+String.valueOf(id));
            }
        } catch (SQLException ex) {
            Logger.getLogger(NPCDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            pool.recycleConnection(con);
        }
        return character;
    }

    private List<NPCCharacter> extractCharacters(ResultSet rs) throws SQLException {
        List<NPCCharacter> characterList =  new ArrayList<NPCCharacter>();
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
            characterList.add(npc);
        }
        return characterList;
    }

}
