/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.server;

import com.beacon.rpg.server.api.dao.IValidationDao;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class SchemaValidator {

    public SchemaValidator(List<IValidationDao> daoList) {
        if (daoList!=null) {
            for (IValidationDao dao:daoList) {
                dao.validateSchema();
            }
        } else {
            Logger.getLogger(this.getClass().getName()).log(Level.WARNING, "No schema validators passed");
        }
    }
}
