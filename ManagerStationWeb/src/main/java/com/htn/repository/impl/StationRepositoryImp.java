/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Station;
import com.htn.repository.StationRepository;
import org.hibernate.Session;
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
public class StationRepositoryImp implements StationRepository {
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addStation(Station s) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(s);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

}