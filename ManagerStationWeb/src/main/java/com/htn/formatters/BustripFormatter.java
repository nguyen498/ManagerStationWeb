/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.formatters;

import com.htn.pojo.Bustrip;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author admin
 */
public class BustripFormatter implements Formatter<Bustrip>{

    @Override
    public String print(Bustrip t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Bustrip parse(String id, Locale locale) throws ParseException {
        Bustrip c = new Bustrip();
        c.setId(Integer.parseInt(id));
        
        return c;
    }
    
}
