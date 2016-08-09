/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Partenaire;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("partenaireDao")
public class PartenaireDao extends GenericDao<Partenaire, Integer> implements IPartenaireDao{
    
    public PartenaireDao(){
    super(Partenaire.class);
    }
    
}
