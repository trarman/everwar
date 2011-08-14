/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.beacon.rpg.ws.exit;

import com.beacon.rpg.server.api.dao.IExitDao;
import com.beacon.rpg.server.types.Exit;
import java.util.logging.Logger;

/**
 *
 * @author cternent
 */
public class ExitService implements IExitService {

    private IExitDao dao;
    private Logger log = Logger.getLogger(ExitService.class.getName());

    public ExitService(IExitDao dao) {
        this.dao = dao;
    }

    public Exit getExitById(Integer id) {
        return dao.getExitById(id);
    }

    public Integer addExit(Exit exit) {
        return dao.addExit(exit);
    }

    public boolean updateExit(Exit exit) {
        return dao.updateExit(exit);
    }

    public boolean removeExitById(Integer id) {
        return dao.removeExitById(id);
    }

}
