/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Ticket;
import com.htn.repository.TicketRepository;
import java.math.BigInteger;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author admin
 */
@Repository
@Transactional
public class TicketRepositoryImp implements TicketRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public boolean checkBookedSeat(int id, int bustripId) {
        Query query = (Query) entityManager.createNativeQuery(
                "SELECT count(*) FROM ticket\n" +
                "where seat_id = ?\n" +
                "and bustrip_id = ?\n")
                .setParameter(1, id)
                .setParameter(2, bustripId);

        BigInteger isBooked = (BigInteger) query.getSingleResult();

        return isBooked.intValue() > 0;
    }

    @Override
    public boolean addTicket(Ticket ticket) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        try {
            session.save(ticket);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
