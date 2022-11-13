/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.formatters;

import org.springframework.format.Formatter;
import com.htn.pojo.User;
import java.text.ParseException;
import java.util.Locale;

/**
 *
 * @author admin
 */
public class UserFortmatter implements Formatter<User>{

     @Override
    public String print(User t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public User parse(String id, Locale locale) throws ParseException {
        User c = new User();
        c.setId(Integer.parseInt(id));
        
        return c;
    }
    
}
