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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
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
                        session.close();
		}

		return pjts;
	}
    
    public long getProjetCount(){
		Long result = 0L ;
		try {
                     this.session =  HibernateUtil.getSessionFactory().openSession();
                         Transaction tx = session.beginTransaction();
                        
			Criteria cr = session.createCriteria(Projet.class);
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
    
    public long getEnCoursProjetCount(){
		Long result = 0L ;
		try {
                     this.session =  HibernateUtil.getSessionFactory().openSession();
                         Transaction tx = session.beginTransaction();
                        
			Criteria cr = session.createCriteria(Projet.class);
                        Criterion c1 = Restrictions.ilike("projetStatut", "en", MatchMode.ANYWHERE);
                        Criterion c2 = Restrictions.ilike("projetStatut", "cours", MatchMode.ANYWHERE);
                        cr.add(Restrictions.and(c1, c2));
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
    
    public long getClotureProjetCount(){
		Long result = 0L ;
		try {
                     this.session =  HibernateUtil.getSessionFactory().openSession();
                         Transaction tx = session.beginTransaction();
                        
			Criteria cr = session.createCriteria(Projet.class);
                        cr.add(Restrictions.ilike("projetStatut", "clotur", MatchMode.ANYWHERE));
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
    
        
    public long getStandByProjetCount(){
		Long result = 0L ;
		try {
                     this.session =  HibernateUtil.getSessionFactory().openSession();
                         Transaction tx = session.beginTransaction();
                        
			Criteria cr = session.createCriteria(Projet.class);
                        cr.add(Restrictions.ilike("projetStatut", "stand", MatchMode.ANYWHERE));
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
    
    public long getProjetCountByCompte(int compteId){
		Long result = 0L ;
                Compte cpte = null ;
		try {
                         this.session =  HibernateUtil.getSessionFactory().openSession();
                        Transaction tx = session.beginTransaction();
                        cpte= (Compte) session.get(Compte.class,compteId);
			Criteria cr = session.createCriteria(Projet.class).add(Restrictions.eq("compte", cpte));
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
