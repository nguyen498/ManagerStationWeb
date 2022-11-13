/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Station;
import com.htn.pojo.User;
import com.htn.repository.StationRepository;
import com.htn.repository.UserRepository;
import com.htn.service.StationService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author admin
 */
@Service
public class StationServiceImp implements StationService{
    
    @Autowired
    private StationRepository stationRepository;
    @Autowired
    private UserRepository userRepository;

    @Override
    @Transactional
    public boolean addStation(Station s) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        s.setUserId(this.userRepository.getUserByUsername(authentication.getName()));
        this.userRepository.getUserByUsername(authentication.getName()).setUserRole("ROLE_STATION");
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

    @Override
    public Station getStationByName(String name) {
        return this.stationRepository.getStationByName(name);
    }

    @Override
    public List<Object[]> revenueStats(int userId) {
        return this.stationRepository.revenueStats(userId);
    }
    
}
