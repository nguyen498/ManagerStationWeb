/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Bustrip;
import com.htn.service.BusService;
import com.htn.service.BustripService;
import com.htn.service.RouteService;
import java.text.ParseException;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author admin
 */
@Controller
public class RegisterTripController {

    @Autowired
    private BusService busService;

    @Autowired
    private RouteService routeService;
    
    @Autowired
    private BustripService bustripService;

    @RequestMapping("/register-trip")
    public String RegisterTrip(Model model) {
        model.addAttribute("bustrip", new Bustrip());
        model.addAttribute("bus", this.busService.getBus());
        model.addAttribute("route", this.routeService.getRoute());

        return "register-trip";
    }

    @PostMapping("/register-trip")
    public String add(@ModelAttribute(value = "bustrip") @Valid Bustrip b,
            BindingResult r, @RequestPart("file") MultipartFile file
            ) throws ParseException {
        
        System.out.println(file);
//        System.out.println(b.getImage());
        
        if (this.bustripService.addBustrip(b) == true) {
            return "redirect:/";
        }
        
        if (r.hasErrors()) {
            System.out.println(b.getFile());
            System.out.println(b.getImage());
            return "register-trip";
        }

        return "register-trip";
    }
}
