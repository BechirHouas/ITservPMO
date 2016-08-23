/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.CompteDao;
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
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
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
    CompteDao compteDao = new CompteDao();
    
    @RequestMapping(value="/utilisateurs" ,method=RequestMethod.GET )
    public String redirectUtilisateurs(HttpServletRequest request, HttpServletResponse response ,final Model model) throws ServletException, IOException{
        HttpSession session=request.getSession();
        if(session.getAttribute("Admin")!=null){
        List<Utilisateur> users = userDao.findAll();
        List<Compte> comptes = compteDao.findAll();
        model.addAttribute("users",users);  
        model.addAttribute("comptes", comptes);
        System.out.println(users.get(0).getComptes().toString());
      // ModelAndView model = new ModelAndView("list_comptes");
       //model.addObject("comptes", comptes);
    return "list_users";}else{
        request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        return null;
        }
    
    @RequestMapping(value="/UserProfile" ,method=RequestMethod.GET )
    public String redirectProfil(HttpServletRequest request, HttpServletResponse response ,final Model model) throws ServletException, IOException{
        HttpSession session=request.getSession();
        Utilisateur u1 ;
        if(session.getAttribute("Admin")!=null){
            u1 = (Utilisateur) session.getAttribute("Admin");
                    model.addAttribute("user",userDao.findById(u1.getIdUtilisateur()));  
        
        
      // ModelAndView model = new ModelAndView("list_comptes");
       //model.addObject("comptes", comptes);
    return "user_profile"; }else{
           request.getRequestDispatcher("/login.jsp").forward(request, response); 
        }
        return null;
    }
    
    @RequestMapping(value = "/ajouterUser", method = RequestMethod.POST)
	public String ajouterUser(final Model model,
			final HttpServletRequest request) throws ParseException {
                Utilisateur u ;
                Compte c ;
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
                
                String[]ucomptes = request.getParameterValues("comptes");
                if(ucomptes!=null){
                for(int i=0 ; i<ucomptes.length ; i++)
                {
                c= compteDao.findById(Integer.parseInt(ucomptes[i]));
                u.getComptes().add(c);
                }      
                }
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
                Compte c ;
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
                
                String[]ucomptes = request.getParameterValues("comptes");
                if(ucomptes!=null){
                 u.getComptes().clear();
                for(int i=0 ; i<ucomptes.length ; i++)
                {
                c= compteDao.findById(Integer.parseInt(ucomptes[i]));
                u.getComptes().add(c);
                }      
                }
		              
                               
                userDao.update(u);
            
		return "redirect:/utilisateurs";
	}
        
        @RequestMapping(value = "/ModifUserProfil", method = RequestMethod.POST)
	public String modifierProfil(final Model model,
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
            
		return "redirect:/UserProfile";
	}
}
