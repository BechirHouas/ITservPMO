/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Pointsus;
import java.io.Serializable;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("pointsusDao")
public class PointsusDao extends GenericDao<Pointsus, Integer> implements IPointsusDao {
    
    public PointsusDao(){
    super(Pointsus.class);
    }
    
}
