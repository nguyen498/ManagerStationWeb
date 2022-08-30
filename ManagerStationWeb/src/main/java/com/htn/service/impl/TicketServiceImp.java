/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Seat;
import com.htn.pojo.Ticket;
import com.htn.pojo.User;
import com.htn.repository.TicketRepository;
import com.htn.service.TicketService;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class TicketServiceImp implements TicketService {

    @Autowired
    private TicketRepository ticketRepository;

    @Override
    public boolean checkBookedSeat(int id, int bustripId) {
        return this.ticketRepository.checkBookedSeat(id, bustripId);
    }

    @Override
    public boolean addTicket(long price, Bustrip bstrp, User user, Seat seat) {
            Ticket ticket = new Ticket();

            ticket.setTotal(price);
            ticket.setCreatedDate(new Date());
            ticket.setUserId(user);
            ticket.setSeatId(seat);
            ticket.setBustripId(bstrp);

            return this.ticketRepository.addTicket(ticket);

    }

    @Override
    public List<Ticket> getTickets() {
        return this.ticketRepository.getTickets();
    }

}
