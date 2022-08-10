/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htn.formatters;

import com.htn.pojo.Station;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author admin
 */
public class StationFormatter implements Formatter<Station>{

    @Override
    public String print(Station t, Locale locale) {
        return String.valueOf(t.getId());
    }

    @Override
    public Station parse(String id, Locale locale) throws ParseException {
        Station c = new Station();
        c.setId(Integer.parseInt(id));
        
        return c;
    }
}
