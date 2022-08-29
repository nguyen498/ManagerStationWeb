/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Bustrip;
import com.htn.pojo.User;
import com.htn.pojo.Seat;
import java.util.Date;
/**
 *
 * @author admin
 */
public interface TicketService {
    boolean checkBookedSeat(int id, int bustripId);
    boolean addTicket(long price, Bustrip bustrip, User user, Seat seat);
}
