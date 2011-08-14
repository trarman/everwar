/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.editor.ws.category;

import com.beacon.rpg.server.types.Category;
import java.util.List;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

/**
 *
 * @author cternent
 */
@WebService
public interface ICategoryService {

    @WebResult(name="categoryList")
    public List<Category> getCategories();

    @WebResult(name="id")
    public Integer addCategory(
            @WebParam(name="parentId") Integer parentId,
            @WebParam(name="name") String name);
    
}
