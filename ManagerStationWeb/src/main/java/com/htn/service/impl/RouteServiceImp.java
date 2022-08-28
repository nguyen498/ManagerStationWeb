/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Route;
import com.htn.repository.RouteRepository;
import com.htn.service.RouteService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class RouteServiceImp implements RouteService{
    
    @Autowired
    private RouteRepository routeRepository;

    @Override
    public boolean addRoute(Route s) {
        return this.routeRepository.addRoute(s);
    }

    @Override
    public List<Route> getRoute() {
        return this.routeRepository.getRoute();
    }

    @Override
    public boolean deleteRoutes(int id) {
        return this.routeRepository.deleteRoutes(id);
    }

    @Override
    public Route getRouteById(int id) {
        return this.routeRepository.getRouteById(id);
    }

    @Override
    public boolean updateRoute(Route route) {
        return this.routeRepository.updateRoute(route);
    }
    
}
