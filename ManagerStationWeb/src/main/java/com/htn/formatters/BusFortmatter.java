/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.formatters;

import com.htn.pojo.Bus;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author admin
 */
public class BusFortmatter implements Formatter<Bus>{
    @Override
    public String print(Bus t, Locale locale) {
        return String.valueOf(t.getBiensoxe());
    }

    @Override
    public Bus parse(String id, Locale locale) throws ParseException {
        Bus c = new Bus();
        c.setBiensoxe(id);
        
        return c;
    }
}
