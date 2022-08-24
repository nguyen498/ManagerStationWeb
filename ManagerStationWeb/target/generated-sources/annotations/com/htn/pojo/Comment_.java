package com.htn.pojo;

import com.htn.pojo.Bustrip;
import com.htn.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-23T19:35:09")
@StaticMetamodel(Comment.class)
public class Comment_ { 

    public static volatile SingularAttribute<Comment, User> acountId;
    public static volatile SingularAttribute<Comment, Bustrip> bustripId;
    public static volatile SingularAttribute<Comment, Integer> like;
    public static volatile SingularAttribute<Comment, Integer> id;
    public static volatile SingularAttribute<Comment, String> content;

}