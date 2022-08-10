/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.htn.service.BustripService;

/**
 *
 * @author admin
 */
@Controller
public class HomeController {
    
    @Autowired
    private BustripService bustripService;
    
    @RequestMapping("/")
    public String home (Model model,
            @RequestParam Map<String, String> params){
//        int page = Integer.parseInt(params.getOrDefault("page", "1"));
        model.addAttribute("bustrips", this.bustripService.getBustrips(params, 0));
        return "index";
    }
}
