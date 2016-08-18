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
public class ActionControlleur {

    ActionDao actionDao=new ActionDao();
    ChantierDao chantierDao=new ChantierDao();
    UtilisateurDao userDao=new UtilisateurDao();
    
    @RequestMapping(value = "/actions", method = RequestMethod.GET)
    public String ListComptes(HttpServletRequest request, HttpServletResponse response,final Model model) throws ServletException, IOException{
      
        
    List<Action> actions = actionDao.findAll();
     model.addAttribute("actions",actions);
     List<Utilisateur> responsables = userDao.findAll();
     model.addAttribute("responsables", responsables);
     List<Chantier> chantiers = chantierDao.findAll();
     model.addAttribute("chantiers", chantiers);
   return "actions"; }
    
    @RequestMapping(value = "/ajouterAction", method = RequestMethod.POST)
	public String ajouterAction(final Model model,
			final HttpServletRequest request) throws ParseException {
                Action action = new Action();
		action.setActionTitre(request.getParameter("action"));
		action.setActionStatut(request.getParameter("statut"));
                Chantier chantier = chantierDao.findById(Integer.parseInt(request
				.getParameter("chantier")));
                action.setChantier(chantier);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                action.setUtilisateur(utilisateur);
                action.setActionPriorite(Integer.parseInt(request.getParameter("priorite")));
                action.setActionAvancement(Integer.parseInt(request.getParameter("avancement")));
                action.setActionRetard(Integer.parseInt(request.getParameter("retard")));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                action.setActionCreationDte(dateFormat.parse(request.getParameter("DateCreation")));
		action.setActionCloturePlanDte(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                action.setActionClotureRealDte(dateFormat.parse(request.getParameter("DateClotureReelle")));
                action.setActionComment(request.getParameter("commentaire"));
                actionDao.save(action);
		return "redirect:/actions";
	}
    
    @RequestMapping(value = "/deleteAction/{id}", method = RequestMethod.GET)
	public String deleteTeachert(final Model model,
			@PathVariable(value = "id") final int actionId) {
		actionDao.delete(actionId);
		final List<Action> actions = actionDao.findAll();
		model.addAttribute("actions", actions);
		return "redirect:/actions";

	}
    
    @RequestMapping(value = "/updateAction/{id}", method = RequestMethod.POST)
	public String updateAction(final Model model,
			final HttpServletRequest request,@PathVariable(value = "id") final int actionId) throws ParseException {
                Action action = (Action)actionDao.findById(actionId);
		action.setActionTitre(request.getParameter("action"));
		action.setActionStatut(request.getParameter("statut"));
                Chantier chantier = chantierDao.findById(Integer.parseInt(request
				.getParameter("chantier")));
                action.setChantier(chantier);
                Utilisateur utilisateur=userDao.findById(Integer.parseInt(request.getParameter("responsable")));
                action.setUtilisateur(utilisateur);
                action.setActionPriorite(Integer.parseInt(request.getParameter("priorite")));
                action.setActionAvancement(Integer.parseInt(request.getParameter("avancement")));
                action.setActionRetard(Integer.parseInt(request.getParameter("retard")));
                
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                
                action.setActionCreationDte(dateFormat.parse(request.getParameter("DateCreation")));
		action.setActionCloturePlanDte(dateFormat.parse(request.getParameter("DateCloturePlanifie")));
                action.setActionClotureRealDte(dateFormat.parse(request.getParameter("DateClotureReelle")));
                action.setActionComment(request.getParameter("commentaire"));
                actionDao.update(action);
		return "redirect:/actions";
	}


    }
    

