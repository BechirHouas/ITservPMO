/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Projet;
import com.pmo.pmoitserv.Model.Sousprojet;
import java.io.Serializable;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("sousprojetDao")
public class SousProjetDao extends GenericDao<Sousprojet, Integer> implements ISousProjetDao {
    
      private Session session = null;
    
     public SousProjetDao()
	{
		super(Sousprojet.class);
	}
    
    public List<Sousprojet> getAllSousProjetsByProjet(int projetId) {
		List<Sousprojet> souspjts = null;
                Projet pjt = null ;
		try {   this.session =  HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
                        pjt= (Projet) session.get(Projet.class,projetId);
                        souspjts = session.createCriteria(Sousprojet.class).add(Restrictions.eq("projet", pjt)).list();
                        tx.commit();
                        session.flush();
                        session.close();
                        return souspjts ;		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return souspjts;
	}
}
