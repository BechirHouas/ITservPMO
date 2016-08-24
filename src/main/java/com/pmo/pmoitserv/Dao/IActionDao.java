/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Action;
import com.pmo.pmoitserv.Model.Compte;


/**
 *
 * @author saif
 */
public interface IActionDao extends IGenericDao<Action, Integer> {
    
    public long getEnCoursActionCount_byCompte(int compteId);
    
}
