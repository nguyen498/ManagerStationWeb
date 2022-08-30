/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.repository.impl;

import com.htn.pojo.Goods;
import com.htn.repository.GoodsRepository;
import com.htn.repository.UserRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author admin
 */
@Repository
@Transactional
public class GoodsRepositoryImp implements GoodsRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private UserRepository userRepository;

    @Override
    public boolean addGoods(Goods g) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            g.setUserId(this.userRepository.getUserByUsername(authentication.getName()));
            session.save(g);
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Goods> getGoods() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Goods> q = b.createQuery(Goods.class);
        Root root = q.from(Goods.class);
        q.select(root);
        Query query = session.createQuery(q);

        return query.getResultList();
    }

}
