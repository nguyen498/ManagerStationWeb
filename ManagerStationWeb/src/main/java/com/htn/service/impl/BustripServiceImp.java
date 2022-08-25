/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htn.pojo.Bustrip;
import com.htn.pojo.Comment;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.htn.repository.BustripRepository;
import com.htn.service.BustripService;
import java.io.IOException;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author admin
 */
@Service
@Transactional
public class BustripServiceImp implements BustripService{
    @Autowired
    private Cloudinary cloudinary;
    
    @Autowired
    private BustripRepository bustripRepository;

    @Override
    public List<Bustrip> getBustrips(Map<String, String> params, int page) {
        return this.bustripRepository.getBustrips(params, page);
    }

    @Override
    public Bustrip getBustripById(int id) {
        return this.bustripRepository.getBustripById(id);
    }

    @Override
    public boolean addBustrip(Bustrip b) {
        try{
            Map r = this.cloudinary.uploader().upload(b.getFile().getBytes(), 
                    ObjectUtils.asMap("resource_type", "auto"));
            
            b.setImage((String) r.get("secure_url"));
            
            return this.bustripRepository.addBustrip(b);
        } catch(IOException ex){
            System.err.println("=======ADD BUSTRIP====="+ ex.getMessage());
            return false;
        }
       
    }

    @Override
    public List<Comment> getComments(int bustripId) {
        return this.bustripRepository.getComments(bustripId);
    }

    @Override
    public Comment addComment(String content, int bustripId) {
        return this.bustripRepository.addComment(content, bustripId);
    }
}
