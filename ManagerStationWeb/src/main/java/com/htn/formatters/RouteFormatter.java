/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.formatters;

import org.springframework.format.Formatter;
import com.htn.pojo.Route;
import java.text.ParseException;
import java.util.Locale;

/**
 *
 * @author admin
 */
public class RouteFormatter implements Formatter<Route>{

    @Override
    public String print(Route t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Route parse(String id, Locale locale) throws ParseException {
        Route c = new Route();
        c.setId(Integer.parseInt(id));
        
        return c;
    }
    
}
