/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @GetMapping("")
    public String admin() {
        
        return "admin";
    }
    
    @GetMapping("/add")
    public String add() {
        
        return "add";
    }
    
    @GetMapping("/list")
    public String list() {
        return "list";
    }
}
