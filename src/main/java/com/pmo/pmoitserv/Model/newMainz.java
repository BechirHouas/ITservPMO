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
         
     // CompteDao dao = new CompteDao();
      //  UserDao dao2 = new UserDao();
     //   ProjetDao dao3 = new ProjetDao();
        
      //  SousProjetDao dao4 = new SousProjetDao();
        
   //   ChantierDao dao5 =  new ChantierDao();
    //  PartenaireDao dao6 = new PartenaireDao();
   //  ActionDao dao7 = new ActionDao();
   //   PointsusDao dao8 = new PointsusDao();
  //DemandeDao dao9 = new DemandeDao();
  // RisqueDao dao10 = new RisqueDao();
  
       ApplicationContext context = new ClassPathXmlApplicationContext(
                "applicationContext.xml" );
        
        Utilisateur u= new Utilisateur() ;
        
        u.setUtilisateurLogin("login1");
       
       IUtilisateurDao dao ;
       dao = context.getBean(IUtilisateurDao.class);

       dao.save(u);
      System.out.println("seif");
   
           
           
   
      
      
      
     // System.out.println(dao8.getPointsusCount());
      
      
     
 
 
    
     
     
     
      
      
     
        
        
                
        
    }
    
}