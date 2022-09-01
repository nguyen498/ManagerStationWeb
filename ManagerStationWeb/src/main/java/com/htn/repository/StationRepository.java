/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;

import com.htn.pojo.Station;
import java.util.List;

/**
 *
 * @author admin
 */
public interface StationRepository {
    boolean addStation (Station s);
    List<Station> getStations ();
    Station getStationById (int id);
    boolean deleteStation (int id);
    boolean updateStation (Station s);
    Station getStationByName (String name);
}
