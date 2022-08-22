/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;

import com.htn.pojo.Bus;
import java.util.List;
/**
 *
 * @author admin
 */
public interface BusRepository {
    List<Bus> getBus();
    boolean addBus (Bus b);
}
