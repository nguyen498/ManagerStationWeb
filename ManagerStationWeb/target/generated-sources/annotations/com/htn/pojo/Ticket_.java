package com.htn.pojo;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Seat;
import com.htn.pojo.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-11-14T19:13:12")
@StaticMetamodel(Ticket.class)
public class Ticket_ { 

    public static volatile SingularAttribute<Ticket, Long> total;
    public static volatile SingularAttribute<Ticket, Bustrip> bustripId;
    public static volatile SingularAttribute<Ticket, Date> createdDate;
    public static volatile SingularAttribute<Ticket, Seat> seatId;
    public static volatile SingularAttribute<Ticket, Integer> id;
    public static volatile SingularAttribute<Ticket, User> userId;

}