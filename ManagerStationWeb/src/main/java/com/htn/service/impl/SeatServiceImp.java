/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Seat;
import com.htn.repository.SeatRepository;
import com.htn.service.SeatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class SeatServiceImp implements SeatService{

    @Autowired
    private SeatRepository seatRepository;
    
    @Override
    public Seat findById(int id) {
        return this.seatRepository.findById(id);
    }
    
}
