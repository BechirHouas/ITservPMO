/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Projet;
import com.pmo.pmoitserv.Model.Sousprojet;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("sousprojetDao")
public class SousProjetDao extends GenericDao<Sousprojet, Integer> implements ISousProjetDao {
    
     public SousProjetDao()
	{
		super(Sousprojet.class);
	}
    
    
}
