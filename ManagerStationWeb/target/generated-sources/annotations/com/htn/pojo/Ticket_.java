package com.htn.pojo;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Customer;
import com.htn.pojo.Seat;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T22:13:57")
@StaticMetamodel(Ticket.class)
public class Ticket_ { 

    public static volatile SingularAttribute<Ticket, Long> giave;
    public static volatile SingularAttribute<Ticket, Bustrip> bustripId;
    public static volatile SingularAttribute<Ticket, Customer> customerId;
    public static volatile SingularAttribute<Ticket, Integer> id;
    public static volatile SingularAttribute<Ticket, Date> ngayxuatve;
    public static volatile SetAttribute<Ticket, Seat> seatSet;

}