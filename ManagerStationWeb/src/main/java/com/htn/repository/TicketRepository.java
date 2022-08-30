/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;

import com.htn.pojo.Ticket;
import java.util.List;

/**
 *
 * @author admin
 */
public interface TicketRepository {
    boolean checkBookedSeat(int id, int bustripId);
    boolean addTicket(Ticket ticket);
    List<Ticket> getTickets ();
}
