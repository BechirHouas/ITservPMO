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
public class SuspensControlleur {

    PointsusDao suspensDao=new PointsusDao();
   // ChantierDao chantierDao=new ChantierDao();
    UtilisateurDao userDao=new UtilisateurDao();
    ProjetDao projetDao=new ProjetDao();
    
    @RequestMapping(value = "/Suspens", method = RequestMethod.GET)
    public String ListSuspens(HttpServletRequest request, HttpServletResponse response,final Model model) throws ServletException, IOException{
     
         HttpSession session=request.getSession();
            Utilisateur u ;
            u = (Utilisateur)session.getAttribute("User");
        
        List<Pointsus> pts = suspensDao.findAll();
        
    model.addAttribute("pts",pts);
     List<Utilisateur> responsables = userDao.findAll();
     model.addAttribute("responsables", responsables);
     
     if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(2)){
     return "Suspens"; 
     }else if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(1)){
      return "admin/Suspens"; 
     }else if(u.getClass().getSimpleName().equals("Ordinaire")){
     return "user/Suspens";
     }
    return null;
    
    }
   
    @RequestMapping(value = "/ajouterPtSuspens", method = RequestMethod.POST)
	public String ajouterPT(final Model model,
			final HttpServletRequest request) throws ParseException {
                Pointsus pt=new Pointsus();
		pt.setPointSusDescrip(request.getParameter("demande"));
                pt.setPointSusStatut(request.getParameter("statut"));
                
                Projet projet=projetDao.findById(3);
                pt.setProjet(projet);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                pt.setUtilisateur(utilisateur);
                pt.setPointSusPriorite(request.getParameter("priorite"));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                pt.setPointSusCreation(dateFormat.parse(request.getParameter("DateCreation")));
		pt.setPointSusResPlan(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                pt.setPointSusResReal(dateFormat.parse(request.getParameter("DateClotureReelle")));
                 
                pt.setPointSusImpacts(request.getParameter("impact"));
                
                pt.setPointSusDecis(request.getParameter("decision"));
                suspensDao.save(pt);
		return "redirect:/Suspens";
	}
    
    @RequestMapping(value = "/deletePtSuspens/{id}", method = RequestMethod.GET)
	public String deletePT(final Model model,
			@PathVariable(value = "id") final int changeId) {
		suspensDao.delete(changeId);
		final List<Pointsus> demandes = suspensDao.findAll();
		model.addAttribute("pts", demandes);
		return "redirect:/Suspens";

	}
    
    @RequestMapping(value = "/updatePtSuspens/{id}", method = RequestMethod.POST)
	public String updatePT(final Model model,
			final HttpServletRequest request,@PathVariable(value = "id") final int demandeId) throws ParseException {
                Pointsus demande = (Pointsus)suspensDao.findById(demandeId);
		demande.setPointSusDescrip(request.getParameter("demande"));
                demande.setPointSusStatut(request.getParameter("statut"));
                
                Projet projet=projetDao.findById(3);
                demande.setProjet(projet);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                demande.setUtilisateur(utilisateur);
                demande.setPointSusPriorite(request.getParameter("priorite"));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                demande.setPointSusCreation(dateFormat.parse(request.getParameter("DateCreation")));
		demande.setPointSusResPlan(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                demande.setPointSusResReal(dateFormat.parse(request.getParameter("DateClotureReelle")));
                 
                demande.setPointSusImpacts(request.getParameter("impact"));
                
                demande.setPointSusDecis(request.getParameter("decision"));
                suspensDao.update(demande);
		return "redirect:/Suspens";
	}


    }
    

