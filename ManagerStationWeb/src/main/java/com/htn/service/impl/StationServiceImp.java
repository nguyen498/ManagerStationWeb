/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Station;
import com.htn.repository.StationRepository;
import com.htn.service.StationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class StationServiceImp implements StationService{
    
    @Autowired
    private StationRepository stationRepository;

    @Override
    public boolean addStation(Station s) {
        return this.stationRepository.addStation(s);
    }

    @Override
    public List<Station> getStations() {
        return this.stationRepository.getStations();
    }

    @Override
    public Station getStationById(int id) {
        return this.stationRepository.getStationById(id);
    }

    @Override
    public boolean deleteStation(int id) {
        return this.stationRepository.deleteStation(id);
    }

    @Override
    public boolean updateStation(Station stn) {
        return this.stationRepository.updateStation(stn);
    }
    
}
