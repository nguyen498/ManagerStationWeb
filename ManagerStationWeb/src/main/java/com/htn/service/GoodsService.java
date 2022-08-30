/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Goods;
import java.util.List;

/**
 *
 * @author admin
 */
public interface GoodsService {
    boolean addGoods (Goods g);
    List<Goods> getGoods ();
}
