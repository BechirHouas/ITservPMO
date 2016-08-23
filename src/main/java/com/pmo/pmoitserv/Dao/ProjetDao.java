/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Projet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("projetDao")
public class ProjetDao extends GenericDao<Projet, Integer> implements IProjetDao{
    
     private Session session = null;
    public ProjetDao()
	{
		super(Projet.class);
              //   this.session =  HibernateUtil.getSessionFactory().openSession();
	}
    
    public List<Projet> getAllProjetsByCompte(int compteId) {
		List<Projet> pjts =null ;
                Compte cpte = null ;
		try {
                        this.session =  HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
                        cpte= (Compte) session.get(Compte.class,compteId);
                        pjts = session.createCriteria(Projet.class).add(Restrictions.eq("compte", cpte)).list();
                        tx.commit();
                        session.flush();
                        session.close();
                        return pjts ;		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return pjts;
	}
}
