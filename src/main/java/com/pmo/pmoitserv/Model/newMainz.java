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
        
        
       
       
     IUtilisateurDao dao = new UtilisateurDao();
       System.out.println(dao.getUserByLogin_Email("ITSERVadmin","f11536bee899541aa233f5c0aa98f625").getUtilisateurTel());
     
     
   
           
           
   
      
      
      
     // System.out.println(dao8.getPointsusCount());
      
      
     
 
 
    
     
     
     
      
      
     
        
        
                
        
    }
    
}
