/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.CompteDao;
import com.pmo.pmoitserv.Dao.UtilisateurDao;
import com.pmo.pmoitserv.Model.Compte;
import com.pmo.pmoitserv.Model.Utilisateur;
import java.io.IOException;
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
    
     @RequestMapping(value="login" ,method=RequestMethod.POST )
    public ModelAndView Logincheck(HttpServletRequest request, HttpServletResponse response ,  @ModelAttribute UtilisateurDao userdao) throws ServletException, IOException{
        HttpSession session=request.getSession();
        System.out.println(request.getParameter("email"));
      Utilisateur u = userdao.getUserByLogin_Email(request.getParameter("email"),userdao.Crypt(request.getParameter("password")));
      
        if(u!=null){
       session.setAttribute("Admin",u);
        return new ModelAndView("index"); }
    else{
        request.getRequestDispatcher("/login.jsp").forward(request, response);
          }
        return null;
    }  
    
    @RequestMapping(value="comptes" ,method=RequestMethod.GET )
    public ModelAndView redirectComptes(HttpServletRequest request, HttpServletResponse response){
        HttpSession session=request.getSession();
       
       
    return new ModelAndView("list_comptes"); }
    
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
