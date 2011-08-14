/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server.dao.mysql;

import com.beacon.rpg.server.api.dao.ICategoryDao;
import com.beacon.rpg.server.api.dao.IValidationDao;
import com.beacon.rpg.server.types.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
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
public class CategoryDao implements ICategoryDao, IValidationDao {

    private JdbcTemplate template;

    public CategoryDao(DataSource dataSource) {
        template = new JdbcTemplate(dataSource);
    }

    public int addCategory(int parent, String name) {
        CategoryCreator catCreator = new CategoryCreator();
        catCreator.setInsertSql("insert into category (parentId, name) values(?,?)");
        catCreator.setName(name);
        catCreator.setParentId(parent);
        KeyHolder keyHolder = new GeneratedKeyHolder();
        template.update(catCreator, keyHolder);
        Number key = keyHolder.getKey();
        return key.intValue();
    }

    public void moveCategoryById(int id, int parent) {
        String query = "UPDATE category SET parentId = ? WHERE id = ?";
        Object[] params = {parent, id};
        int[] types = {Types.INTEGER, Types.INTEGER};
        template.update(query, params, types);
    }

    public void validateSchema() {
        String query = "CREATE TABLE IF NOT EXISTS category "+
                "(id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
                "parentId INT NULL," +
                "name VARCHAR(100) NOT NULL)";
        template.execute(query);
    }

    public List<Category> getCategories() {
        String query = "SELECT * FROM category order by parentId, name";
        List<Category> categories = (List<Category>) template.query(query, new CategoryExtractor());
        return categories;
    }

    private class CategoryExtractor implements ResultSetExtractor {

        public Object extractData(ResultSet rs) throws SQLException, DataAccessException {
            List<Category> catList = new ArrayList<Category>();
            while (rs.next()) {
                Category cat = new Category();
                cat.setId(rs.getInt("id"));
                cat.setParentId(rs.getInt("parentId"));
                cat.setName(rs.getString("name"));
                catList.add(cat);
            }
            return catList;
        }

    }

    private class CategoryCreator implements PreparedStatementCreator {

        private String insertSql;
        private String name;
        private int parentId;

        public PreparedStatement createPreparedStatement(Connection cnctn) throws SQLException {
            PreparedStatement ps = cnctn.prepareStatement(insertSql, new String[] {"id"});
            ps.setInt(1, parentId);
            ps.setString(2, name);
            return ps;
        }

        /**
         * @param insertSql the insertSql to set
         */
        public void setInsertSql(String insertSql) {
            this.insertSql = insertSql;
        }

        /**
         * @param name the name to set
         */
        public void setName(String name) {
            this.name = name;
        }

        /**
         * @param parentId the parentId to set
         */
        public void setParentId(int parentId) {
            this.parentId = parentId;
        }
    }
}
