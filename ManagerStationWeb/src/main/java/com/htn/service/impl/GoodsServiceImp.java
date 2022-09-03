/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Goods;
import com.htn.repository.GoodsRepository;
import com.htn.service.GoodsService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author admin
 */
@Service
@Transactional
public class GoodsServiceImp implements GoodsService{
    
    @Autowired
    private GoodsRepository goodsRepository;
    

    @Override
    public boolean addGoods(Goods g) {
        return this.goodsRepository.addGoods(g);
    }

    @Override
    public List<Goods> getGoods() {
        return this.goodsRepository.getGoods();
    }
    
}
