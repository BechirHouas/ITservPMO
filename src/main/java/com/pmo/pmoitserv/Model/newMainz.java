/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Model;

import com.pmo.pmoitserv.Dao.HibernateUtil;
import com.pmo.pmoitserv.Dao.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author saif
 */
public class newMainz {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        // TODO code application logic here
         
    
  
   //    ApplicationContext context = new ClassPathXmlApplicationContext(
   //             "applicationContext.xml" );
        
        
       
       
     IProjetDao daoprojet = new ProjetDao();
     ICompteDao daocompte = new CompteDao();
     List<Compte> c = daocompte.findAll();
    
     Projet p = new Projet();
     p.setProjetLabel("Projet1");
     p.setCompte(c.get(0));
     daoprojet.save(p);
    
   
           
           
   
      
      
      
     // System.out.println(dao8.getPointsusCount());
      
      
     
 
 
    
     
     
     
      
      
     
        
        
                
        
    }
    
}
