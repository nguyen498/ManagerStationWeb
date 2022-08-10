package com.htn.pojo;

import com.htn.pojo.Account;
import com.htn.pojo.Goods;
import com.htn.pojo.Ticket;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-10T22:13:57")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, Date> birthday;
    public static volatile SetAttribute<Customer, Goods> goodsSet;
    public static volatile SetAttribute<Customer, Ticket> ticketSet;
    public static volatile SingularAttribute<Customer, String> phone;
    public static volatile SingularAttribute<Customer, String> name;
    public static volatile SetAttribute<Customer, Account> accountSet;
    public static volatile SingularAttribute<Customer, Integer> id;

}