/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Comment;
import com.htn.repository.UserRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.htn.repository.BustripRepository;
import java.util.Date;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 *
 * @author admin
 */
@Repository
@Transactional
public class BustripRepositoryImp implements BustripRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<Bustrip> getBustrips(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Bustrip> q = b.createQuery(Bustrip.class);
        Root root = q.from(Bustrip.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String des = params.get("destination");
            if (des != null && !des.isEmpty()) {
                Predicate p = b.like(root.get("routeId").get("tuyenBD").as(String.class),
                        String.format("%%%s%%", des));
                predicates.add(p);
            }

            String end = params.get("end");
            if (end != null && !end.isEmpty()) {
                Predicate p = b.like(root.get("routeId").get("tuyenKT").as(String.class),
                        String.format("%%%s%%", end));
                predicates.add(p);
            }

            String date = params.get("date");
            if (date != null) {
                Predicate p = b.like(root.get("ngaykhoihanh").as(String.class),
                        String.format("%%%s%%", date));
                predicates.add(p);
            }

            q.where(predicates.toArray(new Predicate[]{}));
        }

        Query query = session.createQuery(q);

        if (page > 0) {
            int size = Integer.parseInt(env.getProperty("page.size").toString());
            int start = (page - 1) * size;
            query.setFirstResult(start);
            query.setMaxResults(size);
        }

        return query.getResultList();
    }

    @Override
    public Bustrip getBustripById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        return session.get(Bustrip.class, id);
    }

    @Override
    public boolean addBustrip(Bustrip b) {
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
    public List<Comment> getComments(int bustripId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Comment> q = b.createQuery(Comment.class);
        Root root = q.from(Comment.class);
        q.select(root);

        q.where(b.equal(root.get("bustripId"), bustripId));

        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public Comment addComment(String content, int bustripId) {

        Session session = this.sessionFactory.getObject().getCurrentSession();
        Comment c = new Comment();
        c.setContent(content);
        c.setBustripId(this.getBustripById(bustripId));

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        c.setUserId(this.userRepository.getUserByUsername(authentication.getName()));
        c.setCreatedDate(new Date ());

        session.save(c);

        return c;
    }
}
