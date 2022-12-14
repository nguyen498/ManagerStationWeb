/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Comment;
import java.util.List;
import java.util.Map;

/**
 *
 * @author admin
 */
public interface BustripService {
    List<Bustrip> getBustrips (Map<String, String> params, int page);
    Bustrip getBustripById (int id);
    boolean addBustrip (Bustrip b);
    List<Comment> getComments(int bustripId);
    Comment addComment(String content, int bustripId);
    boolean deleteBustrip(int id);
    boolean updateBustrip (Bustrip b);
    List<Object[]> countTripsByStation();
    List<Object[]> revenueStats();
    int countBustrip();
}
