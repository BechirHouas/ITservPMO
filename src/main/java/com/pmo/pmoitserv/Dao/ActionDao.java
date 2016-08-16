/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Action;
import com.pmo.pmoitserv.Model.Chantier;
import java.io.Serializable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */

@Repository("actionDao")
public class ActionDao extends GenericDao<Action, Integer> implements IActionDao{
    
    public ActionDao(){
     super(Action.class);
    }
    
}
