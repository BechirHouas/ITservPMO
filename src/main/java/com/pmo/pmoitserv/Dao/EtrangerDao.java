/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Etranger;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("etrangerDao")
public class EtrangerDao extends GenericDao<Etranger, Integer> implements IEtrangerDao{
    
    public EtrangerDao(){
    super(Etranger.class);
    }
    
}
