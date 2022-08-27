/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Bus;
import java.util.List;

/**
 *
 * @author admin
 */
public interface BusService {
    boolean addBus (Bus b);
    List<Bus> getBus();
    boolean deleteBus (String id);
    Bus getBusById (String id);
}
