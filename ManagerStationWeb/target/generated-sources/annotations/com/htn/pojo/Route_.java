package com.htn.pojo;

import com.htn.pojo.Bustrip;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-11-14T19:13:12")
@StaticMetamodel(Route.class)
public class Route_ { 

    public static volatile SingularAttribute<Route, String> tuyenBD;
    public static volatile SingularAttribute<Route, String> tuyenKT;
    public static volatile SingularAttribute<Route, Integer> id;
    public static volatile SetAttribute<Route, Bustrip> bustripSet;

}