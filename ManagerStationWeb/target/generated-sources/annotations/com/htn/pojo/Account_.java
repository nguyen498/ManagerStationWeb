package com.htn.pojo;

import com.htn.pojo.Comment;
import com.htn.pojo.Customer;
import com.htn.pojo.Post;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-03T13:24:30")
@StaticMetamodel(Account.class)
public class Account_ { 

    public static volatile SingularAttribute<Account, String> password;
    public static volatile CollectionAttribute<Account, Post> postCollection;
    public static volatile CollectionAttribute<Account, Comment> commentCollection;
    public static volatile SingularAttribute<Account, Customer> customerId;
    public static volatile SingularAttribute<Account, Short> active;
    public static volatile SingularAttribute<Account, Integer> id;
    public static volatile SingularAttribute<Account, Integer> userRole;
    public static volatile SingularAttribute<Account, String> email;
    public static volatile SingularAttribute<Account, String> username;

}