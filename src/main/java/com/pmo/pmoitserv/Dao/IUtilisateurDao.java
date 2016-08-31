/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Utilisateur;
import java.io.Serializable;

/**
 *
 * @author saif
 */
public interface IUtilisateurDao extends IGenericDao<Utilisateur, Integer> {
      
    public String Crypt(String input);
    public Utilisateur getUserByLogin_Email(String login , String password);
     public long getUserCount();
     
}
