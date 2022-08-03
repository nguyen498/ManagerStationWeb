/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.service;

import com.htn.pojo.Post;
import java.util.List;
import java.util.Map;

/**
 *
 * @author admin
 */
public interface PostService {
    List<Post> getPosts (Map<String, String> params, int page);
}
