/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Route;
import com.htn.service.RouteService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
public class RegisterRouteController {
    
    @Autowired
    private RouteService routeService;
    
    @RequestMapping("/register-route")
    public String RegisterRoute (Model model){
        model.addAttribute("route", new Route ());
        return "register-route";
    }
    
    @PostMapping("/register-route")
    public String add (@ModelAttribute(value = "route") @Valid Route s,
            BindingResult r){
    if (r.hasErrors()) {
            return "register-route";
        }   
        
        if (this.routeService.addRoute(s) == true)
            return "redirect:/register-bustrip";
        
        return "register-route";
    }
}
