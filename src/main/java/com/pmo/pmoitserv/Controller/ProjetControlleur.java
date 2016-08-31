/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.ProjetDao;
import com.pmo.pmoitserv.Dao.SousProjetDao;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Projet;
import com.pmo.pmoitserv.Model.Sousprojet;
import com.pmo.pmoitserv.Model.Utilisateur;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author saif
 */
@Controller
@RequestMapping(value="/")
public class ProjetControlleur {
     ProjetDao projetDao = new ProjetDao();
     SousProjetDao sousprojetDao =  new SousProjetDao();
     
      @RequestMapping(value = "/projet/{id}", method = RequestMethod.GET)
	public ModelAndView RedirectProjet(final HttpServletRequest request ,@PathVariable(value = "id") final int projetId) {
            HttpSession session=request.getSession();
            Utilisateur u ;
            u = (Utilisateur)session.getAttribute("User");
            
                Projet p = projetDao.findById(projetId);
                List<Sousprojet> sousprojets = sousprojetDao.getAllSousProjetsByProjet(projetId);
                 System.out.println(u.getClass().getSimpleName() );
                 System.out.println(u.getUtilisateurEtat() );
          //      model.addAttribute("compte", c);
                  ModelAndView model = new ModelAndView();
                 if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(2)){
                 model = new ModelAndView("vue_projet");
                 }if(u.getClass().getSimpleName().equals("Ordinaire")){
               model =  new ModelAndView("user/vue_projet");
                }if(u.getClass().getSimpleName().equals("Admin")&& u.getUtilisateurEtat().equals(1)){
               model =  new ModelAndView("admin/vue_projet");
                }
                model.addObject("sousprojets", sousprojets);
                model.addObject("projet", p);
		return model;
                }

	
        
        @RequestMapping(value = "/AjouterSousprojet", method = RequestMethod.POST)
     public String ajouterProjet(final Model model,
			final HttpServletRequest request) throws ParseException {
                Sousprojet sousprojet = new Sousprojet();
                Projet p = projetDao.findById(Integer.parseInt(request.getParameter("idprojet")));
                sousprojet.setProjet(p);
		sousprojet.setSousprojetLabel(request.getParameter("label"));
		sousprojet.setSousprojetStatut(request.getParameter("statut"));
                               
                sousprojetDao.save(sousprojet);
		return "redirect:/projet/"+request.getParameter("idprojet");
	}
     
      @RequestMapping(value = "/deleteSousprojet/{p}/{id}", method = RequestMethod.GET)
	public String deleteProjet(final Model model,
			@PathVariable(value = "id") final int sousprojetId , @PathVariable(value = "p") final int projetId) {
              
		sousprojetDao.delete(sousprojetId);
               
	//	final List<Projet> projets = projetDao.findAll();
	//	model.addAttribute("projets", projets);
            	return "redirect:/projet/"+projetId;

	}
        
        @RequestMapping(value = "/ModifSousprojet", method = RequestMethod.POST)
	public String modifierSousprojet(final Model model,
			final HttpServletRequest request) throws ParseException {
              Sousprojet sp;
              sp= sousprojetDao.findById(Integer.parseInt(request.getParameter("idsousprojet")));
            
                          
              if(request.getParameter("label")!=null){               
                sp.setSousprojetLabel(request.getParameter("label"));
                }
              if(request.getParameter("statut")!=null){               
                sp.setSousprojetStatut(request.getParameter("statut"));
                }
              
            sousprojetDao.update(sp);  
            
		return "redirect:/projet/"+request.getParameter("idprojet");
	}
}
