package com.htn.pojo;

import com.htn.pojo.Account;
import com.htn.pojo.Bustrip;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-22T19:11:05")
@StaticMetamodel(Comment.class)
public class Comment_ { 

    public static volatile SingularAttribute<Comment, Account> acountId;
    public static volatile SingularAttribute<Comment, Bustrip> bustripId;
    public static volatile SingularAttribute<Comment, Integer> like;
    public static volatile SingularAttribute<Comment, Integer> id;
    public static volatile SingularAttribute<Comment, String> content;

}