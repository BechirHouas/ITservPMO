/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author saif
 */
public class JpaManager {
    
    public JpaManager(){}
    
    private static EntityManagerFactory factory = null ;
    
    public static EntityManagerFactory getFactory(){
    if(factory == null){
    factory = Persistence.createEntityManagerFactory("MY_P_U");
    }
    return factory;
    }
    
}
