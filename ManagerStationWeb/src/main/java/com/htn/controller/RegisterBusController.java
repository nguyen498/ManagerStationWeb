/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Bus;
import com.htn.pojo.Station;
import com.htn.service.BusService;
import com.htn.service.StationService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
public class RegisterBusController {
    
    @Autowired
    private StationService stationService;
    @Autowired
    private BusService busService;
    
    @RequestMapping("/register-bus")
    public String RegisterBus (Model model){
        model.addAttribute("bus", new Bus());
        model.addAttribute("station", this.stationService.getStations());
        return "register-bus";
    }
    
    @PostMapping("/register-bus")
    public String add (@ModelAttribute(value = "bus") @Valid Bus b,
            BindingResult r){
        
        if (r.hasErrors()) {
            return "register-bus";
        }
        
        if (this.busService.addBus(b) == true)
            return "redirect:/register-trip";
    
        return "register-bus";
    }
}
