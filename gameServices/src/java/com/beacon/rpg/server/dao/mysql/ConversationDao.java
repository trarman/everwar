/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.IConversationDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.ConversationAnswer;
import com.beacon.rpg.server.types.ConversationExchange;
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
public class ConversationDao implements IConversationDao, IValidationDao {

    private JdbcTemplate template;
    private static Logger log = Logger.getLogger(ConversationDao.class.getName());

    public ConversationDao(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }
    
    public List<ConversationExchange> getConversationStarters() {
        String query = "SELECT * FROM npc_dialog WHERE starter = ?";
        Object[] params = {true};
        int[] types = {Types.BOOLEAN};
        List<ConversationExchange> exchangeList = (List<ConversationExchange>) template.query(query, params, types, new ExchangeExtractor());
        return exchangeList;
    }

    public ConversationExchange getConversationExchangeById(Integer id) {
        String query = "SELECT * FROM npc_dialog WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<ConversationExchange> exchangeList = (List<ConversationExchange>) template.query(query, params, types, new ExchangeExtractor());
        if (exchangeList!=null && exchangeList.size()==1) {
            ConversationExchange exchange = exchangeList.get(0);
            exchange.setResponses(getConversationAnswersForId(id));
            return exchange;
        } else {
            log.warning("Could not retrieve exactly 1 exchange for id:"+String.valueOf(id));
            return null;
        }
    }

    public List<ConversationAnswer> getConversationAnswersForId(Integer id) {
        String query = "SELECT * FROM pc_dialog WHERE answerToId = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<ConversationAnswer> answerList = (List<ConversationAnswer>) template.query(query, params, types, new AnswerExtractor());
        return answerList;
    }

    public Integer addConversationAnswerToId(Integer id, ConversationAnswer answer) {
        PCDialogCreator creator = new PCDialogCreator();
        creator.setInsertSql("insert into pc_dialog " +
                "(answerToId, dialog, precondition, preconditionValue, action, actionValue, nextExchange)" +
                " values(?,?,?,?,?,?,?)");
        creator.setAnswer(answer);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public boolean isExchangeOrphaned(Integer id) {
        String query = "SELECT count(id) FROM pc_dialog " +
                "WHERE nextExchange = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int count = template.queryForInt(query, params, types);
        return (count==0);
    }
    
    public boolean removeConversationAnswerById(Integer id) {
        String query = "DELETE FROM pc_dialog WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    // Deep remove of orphaned sub-trees.
    public boolean removeConversationExchangeById(Integer id) {
        ConversationExchange exchange = getConversationExchangeById(id);
        if (exchange!=null) {
            boolean success = false;
            String query = "DELETE FROM npc_dialog WHERE id = ?";
            Object[] params = {id};
            int[] types = {Types.INTEGER};
            int rows = template.update(query, params, types);
            success = (rows==1);
            if (exchange.getResponses()!=null && exchange.getResponses().size()>0) {
                for (ConversationAnswer answer:exchange.getResponses()) {
                    success = success && removeConversationAnswerById(answer.getId());
                    // If we've now orphaned an exchange, we should remove it too
                    if (answer.getNextExchange()!=null &&
                            isExchangeOrphaned(answer.getNextExchange())) {
                        success = success &&
                                removeConversationExchangeById(answer.getNextExchange());
                    }
                }
            }
            return success;
        } else {
            // No such exchange!
            return false;
        }
    }

    public Integer addConversationExchange(ConversationExchange exchange) {
        NPCDialogCreator creator = new NPCDialogCreator();
        creator.setInsertSql("insert into npc_dialog " +
                "(dialog, starter)" +
                " values(?,?)");
        creator.setDialog(exchange.getNpcDialog());
        creator.setStarter(exchange.isStarter());
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        /*if (exchange.getResponses()!=null && exchange.getResponses().size()>0) {
            for (ConversationAnswer answer:exchange.getResponses()) {
                addConversationAnswerToId(key.intValue(), answer);
            }
        }*/
        return key.intValue();
    }

    public boolean updateConversationExchange(ConversationExchange exchange) {
        boolean success = false;
        String query = "UPDATE npc_dialog SET dialog=?, starter=? WHERE id = ?";
        Object[] params = {exchange.getNpcDialog(), exchange.isStarter(), exchange.getId()};
        int[] types = {Types.VARCHAR, Types.BOOLEAN, Types.INTEGER};
        int rows = template.update(query, params, types);
        if (rows==1) {
            success = true;
            /*if (exchange.getResponses()!=null && exchange.getResponses().size()>0) {
                for (ConversationAnswer answer:exchange.getResponses()) {
                    success = success && updateConversationAnswer(answer);
                }
            }*/
        }
        return success;
    }

    public boolean updateConversationAnswer(ConversationAnswer answer) {
        String query = "UPDATE pc_dialog SET " +
                "answerToId=?, dialog=?, precondition=?, preconditionValue=?," +
                "action=?, actionValue=?, nextExchange=? " +
                "WHERE id = ?";
        Object[] params = {answer.getAnswerToId(), answer.getAnswer(), answer.getPrecondition(),
                answer.getPreconditionValue(), answer.getAction(),
                answer.getActionValue(), answer.getNextExchange(), answer.getId()};
        int[] types = {Types.INTEGER, Types.VARCHAR, Types.INTEGER, Types.INTEGER,
                Types.INTEGER, Types.INTEGER, Types.INTEGER, Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public List<ConversationExchange> getWholeConversationStartingFromId(Integer id) {
        List<Integer> exchangesToRetrieve = new ArrayList<Integer>();
        List<Integer> exchangesRetrieved = new ArrayList<Integer>();
        exchangesToRetrieve.add(id);
        List<ConversationExchange> exchangeList = new ArrayList<ConversationExchange>();
        // Perform a deep retrieval
        while (exchangesToRetrieve.size()>0) {
            ConversationExchange exchange = getConversationExchangeById(exchangesToRetrieve.get(0));
            exchangeList.add(exchange);
            exchangesRetrieved.add(exchange.getId());
            exchangesToRetrieve.remove(0);
            for (ConversationAnswer answer:exchange.getResponses()) {
                // If this answer leads to another exchange, and we haven't already
                // gotten this exchange nor have we queued it up... add it to the queue
                if (answer.getNextExchange()!=null &&
                        ! exchangesRetrieved.contains(answer.getNextExchange()) &&
                        ! exchangesToRetrieve.contains(answer.getNextExchange())) {
                    exchangesToRetrieve.add(answer.getNextExchange());
                }
            }
        }
        return exchangeList;
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS npc_dialog "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "dialog VARCHAR(2000)," +
                "starter BOOL)";
        template.execute(query);
        query = "CREATE TABLE IF NOT EXISTS pc_dialog "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "answerToId INT,"+
                "dialog VARCHAR(250),"+
                "precondition INT,"+
                "preconditionValue INT,"+
                "action INT,"+
                "actionValue INT,"+
                "nextExchange INT)";
        template.execute(query);
    }

    private class ExchangeExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<ConversationExchange> exchangeList = new ArrayList<ConversationExchange>();
            while (rs.next()) {
                ConversationExchange exchange = new ConversationExchange();
                exchange.setId(rs.getInt("id"));
                exchange.setNpcDialog(rs.getString("dialog"));
                exchange.setStarter(rs.getBoolean("starter"));
                exchangeList.add(exchange);
            }
            return exchangeList;
        }

    }

    private class AnswerExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<ConversationAnswer> answerList = new ArrayList<ConversationAnswer>();
            while (rs.next()) {
                ConversationAnswer answer = new ConversationAnswer();
                answer.setId(rs.getInt("id"));
                answer.setAnswerToId(rs.getInt("answerToId"));
                answer.setAnswer(rs.getString("dialog"));
                answer.setPrecondition(rs.getInt("precondition"));
                answer.setPreconditionValue(rs.getInt("preconditionValue"));
                answer.setAction(rs.getInt("action"));
                answer.setActionValue(rs.getInt("actionValue"));
                answer.setNextExchange(rs.getInt("nextExchange"));
                answerList.add(answer);
            }
            return answerList;
        }

    }

    private class PCDialogCreator implements PreparedStatementCreator {

        private String insertSql;
        private ConversationAnswer answer;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            //                 "(answerToId, dialog, precondition, preconditionValue, action, actionValue, nextExchange)" +
            ps.setInt(1, answer.getAnswerToId());
            ps.setString(2, answer.getAnswer());
            ps.setInt(3, answer.getPrecondition());
            ps.setInt(4, answer.getPreconditionValue());
            ps.setInt(5, answer.getAction());
            ps.setInt(6, answer.getActionValue());
            ps.setInt(7, answer.getNextExchange());
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param answer the answer to set
         */
        public void setAnswer(ConversationAnswer answer) {
            this.answer = answer;
        }
    }

    private class NPCDialogCreator implements PreparedStatementCreator {

        private String insertSql;
        private String dialog;
        private boolean starter;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setString(1, dialog);
            ps.setBoolean(2, starter);
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param dialog the dialog to set
         */
        public void setDialog(String dialog) {
            this.dialog = dialog;
        }

        /**
         * @param starter the starter to set
         */
        public void setStarter(boolean starter) {
            this.starter = starter;
        }

    }
}
