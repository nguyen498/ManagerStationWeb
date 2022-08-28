/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Route;
import com.htn.pojo.Bus;
import com.htn.pojo.Bustrip;
import com.htn.pojo.Station;
import com.htn.service.BusService;
import com.htn.service.BustripService;
import com.htn.service.RouteService;
import com.htn.service.StationService;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
    @Autowired
    private BustripService bustripService;
    
    @GetMapping("/")
    public String admin() {
        return "admin";
    }
    
    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("route", new Route());
        model.addAttribute("bus", new Bus());
        model.addAttribute("station", new Station());
        model.addAttribute("bustrip", new Bustrip());
        model.addAttribute("listStation", this.stationService.getStations());
        model.addAttribute("listBus", this.busService.getBus());
        model.addAttribute("listRoute", this.routeService.getRoute());
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
    
    @PostMapping("/add-bustrip")
    public String addBustrip (@ModelAttribute(value = "bustrip") @Valid Bustrip b, BindingResult rs){
        if (rs.hasErrors()) {
            return "add";
        }
        
        if (this.bustripService.addBustrip(b) == true) {
            return "redirect:/admin/list";
        }
        
        return "add";
    }
    
    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("route", this.routeService.getRoute());
        model.addAttribute("bus", this.busService.getBus());
        model.addAttribute("station", this.stationService.getStations());
        model.addAttribute("bustrip", this.bustripService.getBustrips(null, 0));
        return "list";
    }
    
    @GetMapping("/update/station/{stationId}")
    private String updateStationView(Model model,  @PathVariable(value = "stationId") int id){
        
        model.addAttribute("station", this.stationService.getStationById(id));
        return "admin-update-station-details";
    }
    
    @PostMapping("/update/station/{stationId}")
    private String updateStation (@ModelAttribute(value = "station") @Valid Station s, BindingResult rs){
        if (rs.hasErrors()) {
            return "admin-update-station-details";
        }

        if (this.stationService.updateStation(s) == true) {
            return "redirect:/admin/list";
        }
        return "admin-update-station-details";
    }
    
    @GetMapping("/delete-station/{stationId}")
    private String deleteStation (@PathVariable(value = "stationId") int id){

        if (this.stationService.deleteStation(id) == true) {
            return "redirect:/admin/list";
        }
        return "list";
    }
    
    @GetMapping("/update/route/{routeId}")
    private String updateRouteView(Model model,  @PathVariable(value = "routeId") int id){
        
        model.addAttribute("route", this.routeService.getRouteById(id));
        return "admin-update-route-details";
    }
    
    @PostMapping("/update/route/{routeId}")
    private String updateRoute (@ModelAttribute(value = "routeId") @Valid Route r, BindingResult rs){
        if (rs.hasErrors()) {
            return "admin-update-route-details";
        }

        if (this.routeService.updateRoute(r) == true) {
            return "redirect:/admin/list";
        }
        return "admin-update-route-details";
    }
    
    @GetMapping("/delete-route/{routeId}")
    private String deleteRoute (@PathVariable(value = "routeId") int id){

        if (this.routeService.deleteRoutes(id) == true) {
            return "redirect:/admin/list";
        }
        return "list";
    }
    
    @GetMapping("/update/bus/{busId}")
    private String updateBusView(Model model,  @PathVariable(value = "busId") String id){
        model.addAttribute("listStation", this.stationService.getStations());
        model.addAttribute("bus", this.busService.getBusById(id));
        return "admin-update-bus-details";
    }
    
    @PostMapping("/update/bus/{busId}")
    private String updateBus (@ModelAttribute(value = "busId") @Valid Bus b, BindingResult rs){
        if (rs.hasErrors()) {
            return "admin-update-bus-details";
        }

        if (this.busService.updateBus(b) == true) {
            return "redirect:/admin/list";
        }
        return "admin-update-bus-details";
    }
    
    @GetMapping("/delete-bus/{busId}")
    private String deleteBus (@PathVariable(value = "busId") String id){

        if (this.busService.deleteBus(id) == true) {
            return "redirect:/admin/list";
        }
        return "list";
    }
    
     @GetMapping("/update/bustrip/{bustripId}")
    private String updateBustripView(Model model,  @PathVariable(value = "bustripId") int id){
        model.addAttribute("listBus", this.busService.getBus());
        model.addAttribute("listRoute", this.routeService.getRoute());
        model.addAttribute("bustrip", this.bustripService.getBustripById(id));
        return "admin-update-bustrip-details";
    }
    
    @PostMapping("/update/bustrip/{bustripId}")
    private String updateBus (@ModelAttribute(value = "bustripId") @Valid Bustrip b, BindingResult rs){
        if (rs.hasErrors()) {
            return "admin-update-bustrip-details";
        }

        if (this.bustripService.updateBustrip(b) == true) {
            return "redirect:/admin/list";
        }
        return "admin-update-bustrip-details";
    }
    
    @GetMapping("/delete-bustrip/{bustripId}")
    private String deleteBustrip (@PathVariable(value = "bustripId") int id){

        if (this.bustripService.deleteBustrip(id) == true) {
            return "redirect:/admin/list";
        }
        return "list";
    }
}
