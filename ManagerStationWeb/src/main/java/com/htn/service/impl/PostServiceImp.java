/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.service.impl;

import com.htn.pojo.Post;
import com.htn.repository.PostRepository;
import com.htn.service.PostService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author admin
 */
@Service
public class PostServiceImp implements PostService{
    
    @Autowired
    private PostRepository postRepository;

    @Override
    public List<Post> getPosts(Map<String, String> params, int page) {
        return this.postRepository.getPosts(params, page);
    }
    
}
