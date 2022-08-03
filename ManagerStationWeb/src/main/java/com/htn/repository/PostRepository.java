/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htn.repository;

import java.util.List;
import java.util.Map;
import com.htn.pojo.Post;

/**
 *
 * @author admin
 */
public interface PostRepository {
    List<Post> getPosts (Map<String, String> params, int page);
}
