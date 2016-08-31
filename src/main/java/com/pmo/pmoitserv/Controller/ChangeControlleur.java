/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.*;
import com.pmo.pmoitserv.Dao.CompteDao;
import com.pmo.pmoitserv.Dao.IActionDao;
import com.pmo.pmoitserv.Model.*;
import com.pmo.pmoitserv.Model.Compte;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class ChangeControlleur {

    DemandeDao changeDao=new DemandeDao();
   // ChantierDao chantierDao=new ChantierDao();
    UtilisateurDao userDao=new UtilisateurDao();
    ProjetDao projetDao=new ProjetDao();
    
    @RequestMapping(value = "/changement", method = RequestMethod.GET)
    public String ListDemandes(HttpServletRequest request, HttpServletResponse response,final Model model) throws ServletException, IOException{
     
         HttpSession session=request.getSession();
            Utilisateur u ;
            u = (Utilisateur)session.getAttribute("User");
        
        List<Demande> demandes = changeDao.findAll();
        
    model.addAttribute("changes",demandes);
     List<Utilisateur> responsables = userDao.findAll();
     model.addAttribute("responsables", responsables);
     
      if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(2)){
     return "changement"; 
      }else if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(1)){
      return "admin/changement"; 
     }else if(u.getClass().getSimpleName().equals("Ordinaire")){
     return "user/changement";
     }
    return null;
      
      }
    
    @RequestMapping(value = "/ajouterChangement", method = RequestMethod.POST)
	public String ajouterDemande(final Model model,
			final HttpServletRequest request) throws ParseException {
                Demande demande=new Demande();
		demande.setDemandeLabel(request.getParameter("demande"));
                demande.setDemandeStatut(request.getParameter("statut"));
                
                Projet projet=projetDao.findById(3);
                demande.setProjet(projet);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                demande.setUtilisateur(utilisateur);
                demande.setDemandePriorite(request.getParameter("priorite"));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                demande.setDemandeDte(dateFormat.parse(request.getParameter("DateCreation")));
		demande.setDemandeDecisPlan(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                demande.setDemandeDecisReal(dateFormat.parse(request.getParameter("DateClotureReelle")));
                 
                demande.setDemandeComment(request.getParameter("commentaire"));
                changeDao.save(demande);
		return "redirect:/changement";
	}
    
    @RequestMapping(value = "/deleteChange/{id}", method = RequestMethod.GET)
	public String deleteTeachert(final Model model,
			@PathVariable(value = "id") final int changeId) {
		changeDao.delete(changeId);
		final List<Demande> demandes = changeDao.findAll();
		model.addAttribute("changes", demandes);
		return "redirect:/changement";

	}
    
    @RequestMapping(value = "/updateChange/{id}", method = RequestMethod.POST)
	public String updateAction(final Model model,
			final HttpServletRequest request,@PathVariable(value = "id") final int demandeId) throws ParseException {
                Demande demande = (Demande)changeDao.findById(demandeId);
		demande.setDemandeLabel(request.getParameter("demande"));
                demande.setDemandeStatut(request.getParameter("statut"));
                
                Projet projet=projetDao.findById(3);
                demande.setProjet(projet);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                demande.setUtilisateur(utilisateur);
                demande.setDemandePriorite(request.getParameter("priorite"));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                demande.setDemandeDte(dateFormat.parse(request.getParameter("DateCreation")));
		demande.setDemandeDecisPlan(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                demande.setDemandeDecisReal(dateFormat.parse(request.getParameter("DateClotureReelle")));
                 
                demande.setDemandeComment(request.getParameter("commentaire"));
                changeDao.update(demande);
		return "redirect:/changement";
	}


    }
    

