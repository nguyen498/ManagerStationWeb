/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.controller;

import com.htn.pojo.Comment;
import com.htn.service.BustripService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author admin
 */
@RestController
public class ApiCommentController {
    @Autowired
    private BustripService bustripService;
    
    @PostMapping(path = "/api/add-comment", produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity <Comment> addComment(@RequestBody Map<String, String> params){
        String content = params.get("content");
        int bustripId = Integer.parseInt(params.get("bustripId"));
        Comment c = this.bustripService.addComment(content, bustripId);
        return new ResponseEntity<>(c, HttpStatus.CREATED);
    }
}
