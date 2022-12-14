/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;


import com.htn.pojo.Route;
import java.util.List;

/**
 *
 * @author admin
 */
public interface RouteRepository {
    boolean addRoute (Route s);
    List<Route> getRoute ();
    boolean deleteRoutes (int id);
    Route getRouteById (int id);
    boolean updateRoute (Route s);
}
