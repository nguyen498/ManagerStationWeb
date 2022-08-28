/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Bus;
import com.htn.repository.BusRepository;
import com.htn.service.BusService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class BusServiceImp implements BusService{

    @Autowired
    private BusRepository busRepository;
    
    @Override
    public boolean addBus(Bus b) {
        return this.busRepository.addBus(b);
    }

    @Override
    public List<Bus> getBus() {
        return this.busRepository.getBus();
    }

    @Override
    public boolean deleteBus(String i) {
        return this.busRepository.deleteBus(i);
    }

    @Override
    public Bus getBusById(String i) {
        return this.busRepository.getBusById(i);
    }

    @Override
    public boolean updateBus(Bus bus) {
        return this.busRepository.updateBus(bus);
    }
    
}
