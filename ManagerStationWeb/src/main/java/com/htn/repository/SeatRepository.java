/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;

import com.htn.pojo.Seat;

/**
 *
 * @author admin
 */
public interface SeatRepository {
    Seat findById(int id);
}
