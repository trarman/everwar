/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.IExitDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.Exit;
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
public class ExitDao implements IExitDao, IValidationDao {

    private JdbcTemplate template;
    private Logger log = Logger.getLogger(ExitDao.class.getName());

    public ExitDao(DataSource datasource) {
        template = new JdbcTemplate(datasource);
    }

    public Exit getExitById(Integer id) {
        String query = "SELECT * FROM exits WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        List<Exit> exitList = (List<Exit>) template.query(query, params, types, new ExitExtractor());
        if (exitList.size()==1) {
            return exitList.get(0);
        } else {
            log.warning("Failed to retrieve exactly one exit with id:"+String.valueOf(id));
            return null;
        }
    }

    public Integer addExit(Exit exit) {
        ExitCreator creator = new ExitCreator();
        creator.setInsertSql("insert into exits " +
                "(targetId, requiredObjectId)" +
                " values(?,?)");
        creator.setExit(exit);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(creator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public boolean updateExit(Exit exit) {
        String query = "UPDATE exits SET targetId = ?, requiredObjectId = ? "+
                "WHERE id = ?";
        Object[] params = {exit.getTargetId(), exit.getRequiredObjectId(),
                exit.getId()};
        int[] types = {Types.INTEGER, Types.INTEGER, Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public boolean removeExitById(Integer id) {
        String query = "DELETE FROM exits WHERE id = ?";
        Object[] params = {id};
        int[] types = {Types.INTEGER};
        int rows = template.update(query, params, types);
        return (rows==1);
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS exits "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "targetId INT," +
                "requiredObjectId INT)";
        template.execute(query);
    }

    private class ExitCreator implements PreparedStatementCreator {

        private String insertSql;
        private Exit exit;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setInt(1, exit.getTargetId());
            ps.setInt(2, exit.getRequiredObjectId());
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param exit the exit to set
         */
        public void setExit(Exit exit) {
            this.exit = exit;
        }

    }

    private class ExitExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<Exit> exitList = new ArrayList<Exit>();
            while (rs.next()) {
                Exit exit = new Exit();
                exit.setId(rs.getInt("id"));
                exit.setTargetId(rs.getInt("targetId"));
                exit.setRequiredObjectId(rs.getInt("requiredObjectId"));
                exitList.add(exit);
            }
            return exitList;
        }

    }
}
