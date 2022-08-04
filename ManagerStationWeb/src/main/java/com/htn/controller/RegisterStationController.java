/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Station;
import com.htn.service.StationService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

/**
 *
 * @author admin
 */
@Controller
public class RegisterStationController {
    
    @Autowired
    private StationService stationService;
    
    @RequestMapping("/register-station")
    public String RegisterStation (Model model){
        model.addAttribute("station", new Station ());
                
        return "register-station";
    }
    
    @PostMapping("/register-station")
    public String add (@ModelAttribute(value = "station") @Valid Station s,
            BindingResult r){
        if (r.hasErrors()) {
            return "register-station";
        }
        
        if (this.stationService.addStation(s) == true)
            return "redirect:/";
        
        return "register-station";
    }
    
}
