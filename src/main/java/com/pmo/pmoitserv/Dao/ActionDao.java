/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Action;
import com.pmo.pmoitserv.Model.Chantier;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Projet;
import com.pmo.pmoitserv.Model.Sousprojet;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */

@Repository("actionDao")
public class ActionDao extends GenericDao<Action, Integer> implements IActionDao{
    private Session session = null;
    public ActionDao(){
     super(Action.class);
    }
 
    public long getEnCoursActionCount_byCompte(int compteId){
		Long result = 0L ; ;
                Compte cpte = null ;
                List<Projet> pjts = new ArrayList<Projet>();
                List<Sousprojet> souspjts = new ArrayList<Sousprojet>();
                List<Chantier> chantiers = new ArrayList<Chantier>();
		try {
                         this.session =  HibernateUtil.getSessionFactory().openSession();
                         Transaction tx = session.beginTransaction();
                        cpte= (Compte) session.get(Compte.class,compteId);
                        pjts = session.createCriteria(Projet.class).add(Restrictions.eq("compte", cpte)).list();
			souspjts =  session.createCriteria(Sousprojet.class).add(Restrictions.in("projet", pjts)).list();
			chantiers = session.createCriteria(Chantier.class).add(Restrictions.in("sousprojet", souspjts)).list();
			Criteria cr = session.createCriteria(Action.class);
                        Criterion c1 = Restrictions.ilike("actionStatut", "cours", MatchMode.ANYWHERE);
                        Criterion c2 = Restrictions.in("chantier",chantiers);
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
    
}
