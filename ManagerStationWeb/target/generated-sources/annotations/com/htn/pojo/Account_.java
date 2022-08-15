package com.htn.pojo;

import com.htn.pojo.Bustrip;
import com.htn.pojo.Comment;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-15T13:28:58")
@StaticMetamodel(Account.class)
public class Account_ { 

    public static volatile SingularAttribute<Account, String> password;
    public static volatile SetAttribute<Account, Comment> commentSet;
    public static volatile SingularAttribute<Account, Integer> customerId;
    public static volatile SingularAttribute<Account, Boolean> active;
    public static volatile SingularAttribute<Account, Integer> id;
    public static volatile SingularAttribute<Account, String> userRole;
    public static volatile SingularAttribute<Account, String> email;
    public static volatile SingularAttribute<Account, String> username;
    public static volatile SetAttribute<Account, Bustrip> bustripSet;

}