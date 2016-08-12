/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Projet;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("projetDao")
public class ProjetDao extends GenericDao<Projet, Integer> implements IProjetDao{
    
    public ProjetDao()
	{
		super(Projet.class);
	}
}
