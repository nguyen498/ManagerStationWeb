package com.htn.pojo;

import com.htn.pojo.Bus;
import com.htn.pojo.Ticket;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-29T16:56:55")
@StaticMetamodel(Seat.class)
public class Seat_ { 

    public static volatile SingularAttribute<Seat, Bus> busId;
    public static volatile SetAttribute<Seat, Ticket> ticketSet;
    public static volatile SingularAttribute<Seat, Boolean> active;
    public static volatile SingularAttribute<Seat, Integer> id;

}