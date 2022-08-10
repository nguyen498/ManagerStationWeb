/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Bustrip;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.htn.repository.BustripRepository;
import com.htn.service.BustripService;

/**
 *
 * @author admin
 */
@Service
public class BustripServiceImp implements BustripService{
    
    @Autowired
    private BustripRepository bustripRepository;

    @Override
    public List<Bustrip> getBustrips(Map<String, String> params, int page) {
        return this.bustripRepository.getBustrips(params, page);
    }
    
}
