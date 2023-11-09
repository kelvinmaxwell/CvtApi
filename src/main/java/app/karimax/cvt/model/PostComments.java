package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;


@Data
@NoArgsConstructor
@Entity
@Table(name="post_comments")
public class PostComments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "user_id",nullable = true)
    Integer user_id;

    @Column(name = "forum_id",nullable = true)
    Integer forum_id;

    @Column(name = "post_id",nullable = true)
    Integer post_id;

    @Column(name = "comment_id",nullable = true)
    Integer comment_id;
    @Column(name = "content",nullable = true)
    String content;

    @Column(name = "likes",nullable = true)
    Integer likes;
    @Column(name = "dislikes",nullable = true)
    Integer dislikes;
    @Column(name = "created_at",nullable = true)
    Date created_at;
    @Column(name = "updated_at",nullable = true)
    Date updated_at;


}
