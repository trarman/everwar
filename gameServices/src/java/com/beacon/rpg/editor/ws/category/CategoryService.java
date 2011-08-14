/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.category;

import com.beacon.rpg.server.api.dao.ICategoryDao;
import com.beacon.rpg.server.types.Category;
import java.util.List;

/**
 *
 * @author cternent
 */
public class CategoryService implements ICategoryService{

    private ICategoryDao categoryDao;

    public CategoryService(ICategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    public List<Category> getCategories() {
        return categoryDao.getCategories();
    }

    public Integer addCategory(Integer parentId, String name) {
        return categoryDao.addCategory(parentId, name);
    }


}
