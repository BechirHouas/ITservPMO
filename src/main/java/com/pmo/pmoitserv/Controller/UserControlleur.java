/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.UtilisateurDao;
import com.pmo.pmoitserv.Model.Action;
import com.pmo.pmoitserv.Model.Admin;
import com.pmo.pmoitserv.Model.Chantier;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Consultant;
import com.pmo.pmoitserv.Model.Etranger;
import com.pmo.pmoitserv.Model.Intervenant;
import com.pmo.pmoitserv.Model.Ordinaire;
import com.pmo.pmoitserv.Model.Utilisateur;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author saif
 */
@Controller
@RequestMapping(value="/")
public class UserControlleur {
    
    UtilisateurDao userDao =  new UtilisateurDao();
    
    @RequestMapping(value="/utilisateurs" ,method=RequestMethod.GET )
    public String redirectComptes(HttpServletRequest request, HttpServletResponse response ,final Model model){
        HttpSession session=request.getSession();
        List<Utilisateur> users = userDao.findAll();
       
      model.addAttribute("users",users);    
       
      // ModelAndView model = new ModelAndView("list_comptes");
       //model.addObject("comptes", comptes);
    return "list_users"; }
    
    @RequestMapping(value = "/ajouterUser", method = RequestMethod.POST)
	public String ajouterUser(final Model model,
			final HttpServletRequest request) throws ParseException {
                Utilisateur u ;
                if(request.getParameter("role").equals("ordinaire")){
                    u =  new Ordinaire();
                }else if(request.getParameter("role").equals("admin")){
                    u =  new Admin();
                }else if(request.getParameter("role").equals("consultant")){
                    u =  new Consultant();
                }else if(request.getParameter("role").equals("etranger")){
                    u =  new Etranger();
                }else if(request.getParameter("role").equals("intervenant")){
                    u =  new Intervenant();
                }else{
                u = new Utilisateur();
                }
                
		u.setUtilisateurNom(request.getParameter("nom"));
                u.setUtilisateurPrenom(request.getParameter("prenom"));
		u.setUtilisateurLogin(request.getParameter("login"));
                u.setUtilisateurPassword(userDao.Crypt(request.getParameter("password")));
                u.setUtilisateurEmail(request.getParameter("email"));
                u.setUtilisateurTel(request.getParameter("tel"));
                u.setUtilisateurEtat(1);
                               
                userDao.save(u);
		return "redirect:/utilisateurs";
	}
        
        @RequestMapping(value = "/deleteUser/{id}", method = RequestMethod.GET)
	public String deleteUser (final Model model,
			@PathVariable(value = "id") final int userId) {
		userDao.delete(userId);
		final List<Utilisateur> users = userDao.findAll();
		model.addAttribute("users", users);
		return "redirect:/utilisateurs";

	}
        
        @RequestMapping(value = "/ToggleUser/{id}", method = RequestMethod.GET)
	public String ToggleUser (final Model model,
			@PathVariable(value = "id") final int userId) {
		Utilisateur u = userDao.findById(userId);
                if(u.getUtilisateurEtat()!=1){u.setUtilisateurEtat(1);}else{u.setUtilisateurEtat(0);}
                userDao.update(u);
		final List<Utilisateur> users = userDao.findAll();
		model.addAttribute("users", users);
		return "redirect:/utilisateurs";

	}
        
        @RequestMapping(value = "/ModifUser", method = RequestMethod.POST)
	public String modifierUser(final Model model,
			final HttpServletRequest request) throws ParseException {
                Utilisateur u ;
                 u = userDao.findById(Integer.parseInt(request.getParameter("iduser")));
                
                if(request.getParameter("prenom")!=null){               
                u.setUtilisateurPrenom(request.getParameter("prenom"));
                }
                if(request.getParameter("nom")!=null){               
                u.setUtilisateurNom(request.getParameter("nom"));
                }
                if(request.getParameter("login")!=null){               
                u.setUtilisateurLogin(request.getParameter("login"));
                }
                if(request.getParameter("tel")!=null){               
                u.setUtilisateurTel(request.getParameter("tel"));
                }
                if(request.getParameter("email")!=null){               
                u.setUtilisateurEmail(request.getParameter("email"));
                }
		              
                               
                userDao.update(u);
            
		return "redirect:/utilisateurs";
	}
}
