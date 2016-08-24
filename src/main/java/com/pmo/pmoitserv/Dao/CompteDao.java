/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Utilisateur;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("compteDao")
public class CompteDao extends GenericDao<Compte, Integer> implements ICompteDao{
    private Session session;
    
    public CompteDao()
	{
		super(Compte.class);
	}
    
    public long getCompteCount(){
		Long result = null ;
		try {
                    this.session =  HibernateUtil.getSessionFactory().openSession();
                    Transaction tx = session.beginTransaction();
			Criteria cr = session.createCriteria(Compte.class);
                        cr.setProjection(Projections.rowCount());
                        result = (Long)cr.uniqueResult();
                        tx.commit();
                        session.flush();
                        session.close();
                        return result ;
                        
			}
		catch (Exception e) {
			e.printStackTrace();
                        session.close();
		}
		return result;
	}
}
