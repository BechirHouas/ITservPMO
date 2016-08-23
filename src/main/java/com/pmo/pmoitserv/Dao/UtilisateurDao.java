/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Dao;

import com.pmo.pmoitserv.Model.Utilisateur;
import java.io.Serializable;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author saif
 */
@Repository("utilisateurDao")
public class UtilisateurDao extends GenericDao<Utilisateur, Integer> implements IUtilisateurDao {
    
     private Session session = null;
    
      
    	public UtilisateurDao()
	{
		super(Utilisateur.class);
               // this.session =  HibernateUtil.getSessionFactory().openSession();
	}
        
       
         public Utilisateur getUserByLogin_Email(String login , String password) {
		Utilisateur user = null;
		try {
                        this.session =  HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.beginTransaction();
                        Criteria c = session.createCriteria(Utilisateur.class);
                        Criterion email = Restrictions.eq("utilisateurLogin",login);
                        Criterion log = Restrictions.like("utilisateurEmail",login);
                        LogicalExpression orExp = Restrictions.or(email,log);
                        c.add(orExp);
                        c.add(Restrictions.eq("utilisateurPassword",password));
                                //.add(Restrictions.disjunction().add(Restrictions.eq("utilisateurLogin", login)).add(Restrictions.eq("utilisateurEmail", login)));
                        user = (Utilisateur) c.uniqueResult();
                        tx.commit();
		        session.flush();
                        session.close();
                        return user;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
        
        
     public String Crypt(String input) {
     try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);
            // Now we need to zero pad it if you actually want the full 32 chars.
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
