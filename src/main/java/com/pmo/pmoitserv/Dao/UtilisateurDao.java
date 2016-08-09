/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Utilisateur;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("utilisateurDao")
public class UtilisateurDao extends GenericDao<Utilisateur, Integer> implements IUtilisateurDao {
    
    	public UtilisateurDao()
	{
		super(Utilisateur.class);
	}
}
