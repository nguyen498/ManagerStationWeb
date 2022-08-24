package com.htn.pojo;

import com.htn.pojo.Bus;
import com.htn.pojo.Comment;
import com.htn.pojo.Goods;
import com.htn.pojo.Route;
import com.htn.pojo.Ticket;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-24T22:04:37")
@StaticMetamodel(Bustrip.class)
public class Bustrip_ { 

    public static volatile SingularAttribute<Bustrip, String> image;
    public static volatile SingularAttribute<Bustrip, Bus> bus;
    public static volatile SingularAttribute<Bustrip, Route> routeId;
    public static volatile CollectionAttribute<Bustrip, Ticket> ticketCollection;
    public static volatile SingularAttribute<Bustrip, Date> ngaykhoihanh;
    public static volatile CollectionAttribute<Bustrip, Comment> commentCollection;
    public static volatile SingularAttribute<Bustrip, Integer> id;
    public static volatile SingularAttribute<Bustrip, String> content;
    public static volatile CollectionAttribute<Bustrip, Goods> goodsCollection;
    public static volatile SingularAttribute<Bustrip, Date> thoigian;

}