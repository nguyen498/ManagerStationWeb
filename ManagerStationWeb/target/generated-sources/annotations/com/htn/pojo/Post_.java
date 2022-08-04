package com.htn.pojo;

import com.htn.pojo.Account;
import com.htn.pojo.Bustrip;
import com.htn.pojo.Comment;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-04T21:59:21")
@StaticMetamodel(Post.class)
public class Post_ { 

    public static volatile SingularAttribute<Post, String> image;
    public static volatile SingularAttribute<Post, Account> accountId;
    public static volatile SingularAttribute<Post, Bustrip> bustripId;
    public static volatile SingularAttribute<Post, Integer> like;
    public static volatile CollectionAttribute<Post, Comment> commentCollection;
    public static volatile SingularAttribute<Post, Integer> id;
    public static volatile SingularAttribute<Post, String> content;

}