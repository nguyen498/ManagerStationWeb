package com.htn.pojo;

import com.htn.pojo.Account;
import com.htn.pojo.Bus;
import com.htn.pojo.Comment;
import com.htn.pojo.Driver;
import com.htn.pojo.Goods;
import com.htn.pojo.Route;
import com.htn.pojo.Ticket;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T22:13:57")
@StaticMetamodel(Bustrip.class)
public class Bustrip_ { 

    public static volatile SingularAttribute<Bustrip, String> image;
    public static volatile SingularAttribute<Bustrip, Account> accountId;
    public static volatile SingularAttribute<Bustrip, Bus> bus;
    public static volatile SetAttribute<Bustrip, Goods> goodsSet;
    public static volatile SingularAttribute<Bustrip, Route> routeId;
    public static volatile SingularAttribute<Bustrip, Driver> driverId;
    public static volatile SetAttribute<Bustrip, Ticket> ticketSet;
    public static volatile SetAttribute<Bustrip, Comment> commentSet;
    public static volatile SingularAttribute<Bustrip, Integer> id;
    public static volatile SingularAttribute<Bustrip, String> content;
    public static volatile SingularAttribute<Bustrip, Date> thoigian;

}