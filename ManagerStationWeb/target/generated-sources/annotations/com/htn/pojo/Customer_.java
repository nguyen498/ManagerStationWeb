package com.htn.pojo;

import com.htn.pojo.Goods;
import com.htn.pojo.Receipt;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-22T19:11:05")
@StaticMetamodel(Customer.class)
public class Customer_ { 

    public static volatile SingularAttribute<Customer, Date> birthday;
    public static volatile SetAttribute<Customer, Goods> goodsSet;
    public static volatile SetAttribute<Customer, Receipt> receiptSet;
    public static volatile SingularAttribute<Customer, String> phone;
    public static volatile SingularAttribute<Customer, String> name;
    public static volatile SingularAttribute<Customer, Integer> id;

}