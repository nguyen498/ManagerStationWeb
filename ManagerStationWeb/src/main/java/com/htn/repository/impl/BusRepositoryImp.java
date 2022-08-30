/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Bus;
import com.htn.pojo.Station;
import com.htn.repository.BusRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
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
public class BusRepositoryImp implements BusRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addBus(Bus b) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(b);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Bus> getBus() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Bus> q = b.createQuery(Bus.class);
        Root root = q.from(Bus.class);
        q.select(root);
        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public boolean deleteBus(String id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Bus b = session.get(Bus.class, id);
            session.delete(b);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Bus getBusById(String id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        return session.get(Bus.class, id);
    }

    @Override
    public boolean updateBus(Bus b) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(b);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Object[]> getBusByStation() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rBus = q.from(Bus.class);
        Root rStation = q.from(Station.class);
        
        q.where(b.equal(rBus.get("manhaxe"), rStation.get("id")));
        
        q.multiselect(rStation.get("id"), rStation.get("tennhaxe"), b.count(rBus.get("biensoxe")));
        
        q.groupBy(rStation.get("id"));
        
        Query query = session.createQuery(q);
        return query.getResultList();
    }

}
