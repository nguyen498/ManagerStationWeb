package com.htn.pojo;

import com.htn.pojo.Bustrip;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-02T19:43:26")
@StaticMetamodel(Driver.class)
public class Driver_ { 

    public static volatile SingularAttribute<Driver, Date> birthday;
    public static volatile SingularAttribute<Driver, String> firstName;
    public static volatile SingularAttribute<Driver, String> lastName;
    public static volatile SingularAttribute<Driver, String> phone;
    public static volatile SingularAttribute<Driver, Integer> id;
    public static volatile CollectionAttribute<Driver, Bustrip> bustripCollection;

}