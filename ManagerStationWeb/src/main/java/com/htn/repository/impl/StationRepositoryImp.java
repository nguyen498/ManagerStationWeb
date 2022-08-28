/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Station;
import com.htn.repository.StationRepository;
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

    @Override
    public List<Station> getStations() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Station> q = b.createQuery(Station.class);
        Root root = q.from(Station.class);
        q.select(root);
        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public Station getStationById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        return session.get(Station.class, id);
    }

    @Override
    public boolean deleteStation(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Station p = session.get(Station.class, id);
            session.delete(p);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean updateStation(Station s) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.update(s);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

}
