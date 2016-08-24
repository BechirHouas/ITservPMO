/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.ActionDao;
import com.pmo.pmoitserv.Dao.CompteDao;
import com.pmo.pmoitserv.Dao.ProjetDao;
import com.pmo.pmoitserv.Model.Action;
import com.pmo.pmoitserv.Model.Chantier;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Projet;
import com.pmo.pmoitserv.Model.Utilisateur;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@RequestMapping(value="/")
public class CompteControlleur {
    
    CompteDao compteDao=new CompteDao();
    ProjetDao projetDao = new ProjetDao();
    ActionDao actionDao = new ActionDao();
   @RequestMapping(value="/comptes" ,method=RequestMethod.GET )
    public String redirectComptes(HttpServletRequest request, HttpServletResponse response ,final Model model){
        HttpSession session=request.getSession();
        List<Compte> comptes = compteDao.findAll();
       
      model.addAttribute("comptes",comptes);    
       
      // ModelAndView model = new ModelAndView("list_comptes");
       //model.addObject("comptes", comptes);
    return "list_comptes"; }
   
    
    @RequestMapping(value = "/ajouterCompte", method = RequestMethod.POST)
     public String ajouterCompte(final Model model,
			final HttpServletRequest request) throws ParseException {
                Compte compte = new Compte();
		compte.setCompteNom(request.getParameter("nom"));
		compte.setCompteAdresse(request.getParameter("adresse"));
                compte.setCompteEmail(request.getParameter("email"));
                compte.setCompteTel(request.getParameter("tel"));
                compte.setCompteLogolien(request.getParameter("url"));
                
                compteDao.save(compte);
		return "redirect:/comptes";
	}
     
      @RequestMapping(value = "/deleteCompte/{id}", method = RequestMethod.GET)
	public String deleteCompte(final Model model,
			@PathVariable(value = "id") final int compteId) {
		compteDao.delete(compteId);
		final List<Compte> comptes = compteDao.findAll();
		model.addAttribute("comptes", comptes);
		return "redirect:/comptes";

	}
        
        @RequestMapping(value = "/compte/{id}", method = RequestMethod.GET)
	public ModelAndView RedirectCompte(@PathVariable(value = "id") final int compteId) {
                Compte c = compteDao.findById(compteId);
                List<Projet> projets = projetDao.getAllProjetsByCompte(compteId);
                //  System.out.println(projets);
          //      model.addAttribute("compte", c);
                ModelAndView model = new ModelAndView("vue_compte");
                model.addObject("projets", projets);
                model.addObject("compte", c);
                model.addObject("projetnbr", projetDao.getProjetCountByCompte(c.getIdCompte()));
                model.addObject("usernbr", c.getUtilisateurs().size());
                model.addObject("actionnbr", actionDao.getEnCoursActionCount_byCompte(c.getIdCompte()));
                
		return model;

	}
        
        @RequestMapping(value = "/ModifCompte", method = RequestMethod.POST)
	public String modifierCompte(final Model model,
			final HttpServletRequest request) throws ParseException {
                Compte c ;
                 c = compteDao.findById(Integer.parseInt(request.getParameter("idcompte")));
                              
                if(request.getParameter("nom")!=null){               
                c.setCompteNom(request.getParameter("nom"));
                }
                if(request.getParameter("adresse")!=null){               
                c.setCompteAdresse(request.getParameter("adresse"));
                }
                if(request.getParameter("tel")!=null){               
                c.setCompteTel(request.getParameter("tel"));
                }
                if(request.getParameter("email")!=null){               
                c.setCompteEmail(request.getParameter("email"));
                }
                if(request.getParameter("urlfb")!=null){               
                c.setCompteFblien(request.getParameter("urlfb"));
                }
                if(request.getParameter("urlin")!=null){               
                c.setCompteInlien(request.getParameter("urlin"));
                }
                if(request.getParameter("url")!=null){               
                c.setCompteLogolien(request.getParameter("url"));
                }
		              
                               
                compteDao.update(c); 
            
		return "redirect:/compte/"+request.getParameter("idcompte");
	}
        
        @RequestMapping(value = "/deleteProjet/{c}/{id}", method = RequestMethod.GET)
	public String deleteProjet(final Model model,
			@PathVariable(value = "id") final int projetId , @PathVariable(value = "c") final int compteId) {
              
		projetDao.delete(projetId);
               
	//	final List<Projet> projets = projetDao.findAll();
	//	model.addAttribute("projets", projets);
            	return "redirect:/compte/"+compteId;

	}
    
        
        @RequestMapping(value = "/ajouterProjet", method = RequestMethod.POST)
     public String ajouterProjet(final Model model,
			final HttpServletRequest request) throws ParseException {
                Projet projet = new Projet();
                Compte c = compteDao.findById(Integer.parseInt(request.getParameter("idcompte")));
                projet.setCompte(c);
		projet.setProjetLabel(request.getParameter("label"));
		projet.setProjetStatut(request.getParameter("statut"));
                DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                projet.setProjetDteDebut(dateFormat.parse(request.getParameter("datedeb")));
                projet.setProjetConcept(request.getParameter("concep"));
                               
                projetDao.save(projet);
		return "redirect:/compte/"+request.getParameter("idcompte");
	}
     
     @RequestMapping(value = "/ModifProjet", method = RequestMethod.POST)
	public String modifierProjet(final Model model,
			final HttpServletRequest request) throws ParseException {
              Projet p;
              p= projetDao.findById(Integer.parseInt(request.getParameter("idprojet")));
              
              if(request.getParameter("label")!=null){               
                p.setProjetLabel(request.getParameter("label"));
                }
              if(request.getParameter("statut")!=null){               
                p.setProjetStatut(request.getParameter("statut"));
                }
              if(request.getParameter("dateclot")!=null){ 
                  DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                p.setProjetDteCloture(dateFormat.parse(request.getParameter("dateclot")));
                }
              if(request.getParameter("concep")!=null){               
                p.setProjetConcept(request.getParameter("concep"));
                }
              
            projetDao.update(p); 
            
		return "redirect:/compte/"+request.getParameter("idcompte");
	}
}
