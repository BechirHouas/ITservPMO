/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Chantier;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("chantierDao")
public class ChantierDao extends GenericDao<Chantier, Integer> implements IChantierDao{
    
    public ChantierDao(){
     super(Chantier.class);
    }
    
}
