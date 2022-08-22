/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Route;
import com.htn.repository.RouteRepository;
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
public class RouteRepositoryImp implements RouteRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addRoute(Route s) {
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
    public List<Route> getRoute() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Route> q = b.createQuery(Route.class);
        Root root = q.from(Route.class);
        q.select(root);
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }
    
}
