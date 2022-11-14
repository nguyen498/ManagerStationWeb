/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Bus;
import com.htn.pojo.Station;
import java.util.List;

/**
 *
 * @author admin
 */
public interface StationService {
    boolean addStation (Station s);
    List<Station> getStations ();
    Station getStationById (int id);
    boolean deleteStation (int id);
    boolean updateStation (Station s);
    Station getStationByName (String name);
    List<Object[]>revenueStats(int userId);
    List<Bus> getBusByStation (int userId); 
}
