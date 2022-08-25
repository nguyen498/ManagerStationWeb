/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Route;
import com.htn.pojo.Bus;
import com.htn.pojo.Station;
import com.htn.service.BusService;
import com.htn.service.RouteService;
import com.htn.service.StationService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author admin
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    
    @Autowired
    private RouteService routeService;
    @Autowired
    private StationService stationService;
    @Autowired
    private BusService busService;
    
    @GetMapping("/")
    public String admin() {
        return "admin";
    }
    
    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("route", new Route());
        model.addAttribute("bus", new Bus());
        model.addAttribute("station", new Station());
        model.addAttribute("listStation", this.stationService.getStations());
        return "add";
    }
    
    @PostMapping("/add-route")
    public String addRoute(@ModelAttribute(value = "route") @Valid Route r, BindingResult rs){
        if (rs.hasErrors()) {
            return "add";
        }

        if (this.routeService.addRoute(r) == true) {
            return "redirect:/admin/list";
        }
        return "add";
    }
    
    @PostMapping("/add-bus")
    public String addBus(@ModelAttribute(value = "bus") @Valid Bus b, BindingResult rs){
        if (rs.hasErrors()) {
            return "add";
        }

        if (this.busService.addBus(b) == true) {
            return "redirect:/admin/list";
        }
        return "add";
    }
    
    @PostMapping("/add-station")
    public String addStation(@ModelAttribute(value = "station") @Valid Station s, BindingResult rs){
        if (rs.hasErrors()) {
            return "add";
        }

        if (this.stationService.addStation(s) == true) {
            return "redirect:/admin/list";
        }
        return "add";
    }
    
    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("route", this.routeService.getRoute());
        model.addAttribute("bus", this.busService.getBus());
        model.addAttribute("station", this.stationService.getStations());
        return "list";
    }
}
