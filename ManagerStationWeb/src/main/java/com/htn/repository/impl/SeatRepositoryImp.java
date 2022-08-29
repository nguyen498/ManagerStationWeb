/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Seat;
import com.htn.repository.SeatRepository;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
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
public class SeatRepositoryImp implements SeatRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @PersistenceContext
    private EntityManager entityManager;
    
    @Override
    public Seat findById(int id) {
        Seat seat = (Seat) entityManager.createNativeQuery(
                "SELECT * FROM seat\n"
                + "where id = ?", Seat.class)
                .setParameter(1, id)
                .getSingleResult();

        return seat;
    }

}
