package com.htn.pojo;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Seat;
import com.htn.pojo.Station;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-03T22:27:26")
@StaticMetamodel(Bus.class)
public class Bus_ { 

    public static volatile SingularAttribute<Bus, Station> mabenxe;
    public static volatile SingularAttribute<Bus, String> biensoxe;
    public static volatile CollectionAttribute<Bus, Seat> seatCollection;
    public static volatile CollectionAttribute<Bus, Bustrip> bustripCollection;

}