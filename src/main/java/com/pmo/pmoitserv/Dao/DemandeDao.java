/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Demande;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("demandeDao")
public class DemandeDao extends GenericDao<Demande, Integer> implements IDemandeDao {
    public DemandeDao(){
    super(Demande.class);
    }
}
