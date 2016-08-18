/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

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
    ProjetDao projeDao = new ProjetDao();
    
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
	public String RedirectCompte(final Model model,
			@PathVariable(value = "id") final int compteId) {
                Compte c = compteDao.findById(compteId);
                System.out.println(c.getCompteNom());
                List<Projet> projets = projeDao.getAllProjetsByCompte(compteId);
		model.addAttribute("compte", c);
                model.addAttribute("projets", projets);
		return "vue_compte";

	}
    
}
