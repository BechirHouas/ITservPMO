/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Ordinaire;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("ordinaireDao")
public class OrdinaireDao extends GenericDao<Ordinaire, Integer> implements IOrdinaireDao{
    
    public OrdinaireDao(){
    super(Ordinaire.class);
    }
    
}
