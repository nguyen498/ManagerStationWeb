/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Station;
import com.htn.repository.StationRepository;
import com.htn.service.StationService;
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
    
}
