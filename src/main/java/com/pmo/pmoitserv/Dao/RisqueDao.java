/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Risque;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("risqueDao")
public class RisqueDao extends GenericDao<Risque, Integer>  implements IRisqueDao{
    
    public RisqueDao(){
    super(Risque.class);
    }
    
}
