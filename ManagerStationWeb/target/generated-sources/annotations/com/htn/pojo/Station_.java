package com.htn.pojo;

import com.htn.pojo.Bus;
import com.htn.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-11-14T19:13:12")
@StaticMetamodel(Station.class)
public class Station_ { 

    public static volatile SingularAttribute<Station, String> diachi;
    public static volatile SetAttribute<Station, Bus> busSet;
    public static volatile SingularAttribute<Station, String> tennhaxe;
    public static volatile SingularAttribute<Station, Integer> id;
    public static volatile SingularAttribute<Station, User> userId;

}