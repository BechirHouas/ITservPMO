/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Admin;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("adminDao")
public class AdminDao extends GenericDao<Admin, Integer> implements IAdminDao{
    
    public AdminDao(){
    super(Admin.class);
    }
    
}
