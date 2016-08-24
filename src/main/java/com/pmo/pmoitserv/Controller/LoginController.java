/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.CompteDao;
import com.pmo.pmoitserv.Dao.ProjetDao;
import com.pmo.pmoitserv.Dao.UtilisateurDao;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Utilisateur;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author saif
 */
@Controller
public class LoginController {
    
    CompteDao compteDao = new CompteDao();
    ProjetDao projetDao = new ProjetDao();
    UtilisateurDao userDao = new UtilisateurDao();
    
     @RequestMapping(value="login" ,method=RequestMethod.POST )
    public ModelAndView Logincheck(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        HttpSession session=request.getSession();
        
      Utilisateur u = userDao.getUserByLogin_Email(request.getParameter("email"),userDao.Crypt(request.getParameter("password")));
      
        if(u!=null){
       session.setAttribute("Admin",u);
       List<String> taches = new ArrayList<String>();
       session.setAttribute("taches", taches);
       ModelAndView model = new ModelAndView("index");
       Long nbrprojets = projetDao.getProjetCount();
       Long nbrcomptes = compteDao.getCompteCount();
       Long nbrusers = userDao.getUserCount();
      int nbrprojets_encours = (int)Math.ceil((long)((float)projetDao.getEnCoursProjetCount()/nbrprojets*100));
       int nbrprojets_clot = (int)Math.ceil((long)((float)projetDao.getClotureProjetCount()/nbrprojets*100));
       int nbrprojets_standby = (int)Math.ceil((long)((float)projetDao.getStandByProjetCount()/nbrprojets*100));
       
       model.addObject("nbrprojets",nbrprojets);
       model.addObject("nbrcomptes",nbrcomptes);
       model.addObject("nbrusers",nbrusers);
       model.addObject("percentencours",nbrprojets_encours);
       model.addObject("percentclot",nbrprojets_clot);
       model.addObject("percentstandby",nbrprojets_standby);
       model.addObject("taches", taches);
       
        return model; }
    else{
            session.invalidate();
            request.setAttribute("errorMessage", "Login ou Mot de passe invalide");
        request.getRequestDispatcher("/login.jsp").forward(request, response);
          }
        return null;
    }  
    
    @RequestMapping(value="login" ,method=RequestMethod.GET )
    public ModelAndView LoginReload(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        HttpSession session=request.getSession();
         
        if(session.getAttribute("Admin")!=null){
       List<String> taches = (List) session.getAttribute("taches");
       ModelAndView model = new ModelAndView("index");
       Long nbrprojets = projetDao.getProjetCount();
       Long nbrcomptes = compteDao.getCompteCount();
       Long nbrusers = userDao.getUserCount();
       int nbrprojets_encours = (int)Math.ceil((long)((float)projetDao.getEnCoursProjetCount()/nbrprojets*100));
       int nbrprojets_clot = (int)Math.ceil((long)((float)projetDao.getClotureProjetCount()/nbrprojets*100));
       int nbrprojets_standby = (int)Math.ceil((long)((float)projetDao.getStandByProjetCount()/nbrprojets*100));
       model.addObject("nbrprojets",nbrprojets);
       model.addObject("nbrcomptes",nbrcomptes);
       model.addObject("nbrusers",nbrusers);
       model.addObject("percentencours",nbrprojets_encours);
       model.addObject("percentclot",nbrprojets_clot);
       model.addObject("percentstandby",nbrprojets_standby);
       model.addObject("taches",taches);
       
        return model; }
    else{
            session.invalidate();
            request.setAttribute("errorMessage", "Login ou Mot de passe invalide");
        request.getRequestDispatcher("/login.jsp").forward(request, response);
          }
        return null;
    }  
    
    @RequestMapping(value="Deconnect" ,method=RequestMethod.GET )
    public void Deconnecter(HttpServletRequest request, HttpServletResponse response ,  @ModelAttribute UtilisateurDao userdao) throws ServletException, IOException{
        request.removeAttribute("errorMessage");
        request.getSession().invalidate();
       request.getRequestDispatcher("/login.jsp").forward(request, response);
    }  
    
    @RequestMapping(value="index" ,method=RequestMethod.GET )
    public ModelAndView redirectIndex(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session=request.getSession();
       
        if(session.getAttribute("Admin")!=null){
       List<String> taches = (List) session.getAttribute("taches");
       ModelAndView model = new ModelAndView("index");
       Long nbrprojets = projetDao.getProjetCount();
       Long nbrcomptes = compteDao.getCompteCount();
       Long nbrusers = userDao.getUserCount();
       int nbrprojets_encours = (int)Math.ceil((long)((float)projetDao.getEnCoursProjetCount()/nbrprojets*100));
       int nbrprojets_clot = (int)Math.ceil((long)((float)projetDao.getClotureProjetCount()/nbrprojets*100));
       int nbrprojets_standby = (int)Math.ceil((long)((float)projetDao.getStandByProjetCount()/nbrprojets*100));
       model.addObject("nbrprojets",nbrprojets);
       model.addObject("nbrcomptes",nbrcomptes);
       model.addObject("nbrusers",nbrusers);
       model.addObject("percentencours",nbrprojets_encours);
       model.addObject("percentclot",nbrprojets_clot);
       model.addObject("percentstandby",nbrprojets_standby);
       model.addObject("taches",taches);
       
        return model; }
    else{
            session.invalidate();
            request.setAttribute("errorMessage", "Login ou Mot de passe invalide");
        request.getRequestDispatcher("/login.jsp").forward(request, response);
          }
        return null;
       
     }
        
    @RequestMapping(value="compte" ,method=RequestMethod.GET )
    public ModelAndView redirectCompte(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
       
       
    return new ModelAndView("vue_compte"); }
    
    @RequestMapping(value="projet" ,method=RequestMethod.GET )
    public ModelAndView redirectProjet(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
       
       
    return new ModelAndView("vue_projet"); }
    
    @RequestMapping(value="sousprojet/{id}" ,method=RequestMethod.GET )
    public ModelAndView redirectSousProjet(HttpServletRequest request, HttpServletResponse response ,@PathVariable("id") int id  ){
        HttpSession session=request.getSession();
       System.out.println("num : "+id);
      return new ModelAndView("vue_sousprojet"); }
}
