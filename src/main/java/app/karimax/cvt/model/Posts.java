package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@Entity
@Table(name = "forum_posts")
public class Posts {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "reference")
    private String reference;

    @Column(name = "user_id")
    private Integer user_id;


    @Column(name = "forum_id")
    private Integer forum_id;

    @Column(name = "content")
    private String content;

    @Column(name = "description")
    private String description;

    @Column(name = "likes")
    private Integer likes;

    @Column(name = "dislikes")
    private Integer dislikes;

    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Date updated_at;



}
