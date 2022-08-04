/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Post;
import com.htn.repository.PostRepository;
import com.htn.utils.Utils;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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

/**
 *
 * @author admin
 */
@Repository
@Transactional
public class PostRepositoryImp implements PostRepository{
    
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<Post> getPosts(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Post> q = b.createQuery(Post.class);
        Root root = q.from(Post.class);
        q.select(root);
        
        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String des = params.get("destination");
            if (des != null && !des.isEmpty()) {
                Predicate p = b.like(root.get("bustripId").get("routeId").get("tuyenBD").as(String.class),
                        String.format("%%%s%%", des));
                predicates.add(p);
            }
            
            String end = params.get("end");
            if (end != null && !end.isEmpty()) {
                Predicate p = b.like(root.get("bustripId").get("routeId").get("tuyenKT").as(String.class),
                        String.format("%%%s%%", end));
                predicates.add(p);
            }

            String date = params.get("date");
            if (date != null) {
                Predicate p = b.like(root.get("bustripId").get("thoigian").as(String.class),
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
    
}
