/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pmo.pmoitserv.Controller;

import com.pmo.pmoitserv.Dao.CompteDao;
import com.pmo.pmoitserv.Model.Compte;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author saif
 */
@Controller
public class CompteControlleur {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView ListComptes(HttpServletRequest request, HttpServletResponse response ,  @ModelAttribute CompteDao comptedao){
        HttpSession session=request.getSession();
        List<Compte> list ;
    list = comptedao.findAll();
     session.setAttribute("listcomptes",list);
       
    return new ModelAndView("list_comptes"); }
   
    
}
