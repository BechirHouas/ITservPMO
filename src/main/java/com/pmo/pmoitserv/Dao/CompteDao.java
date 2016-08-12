/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Utilisateur;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("compteDao")
public class CompteDao extends GenericDao<Compte, Integer> implements ICompteDao{
    
    public CompteDao()
	{
		super(Compte.class);
	}
    
}
