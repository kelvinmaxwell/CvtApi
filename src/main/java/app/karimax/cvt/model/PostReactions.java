package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@Entity
@Table(name = "posts_reactions")
public class PostReactions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "post_comment_id")
    private Integer post_comment_id;

    @Column(name = "reaction_type")
    private String reaction_type;

    @Column(name = "user_id")
    private Integer user_id;

    @Column(name = "dislike_like")
    private String dislike_like;
    @Column(name = "created_at")
    private Timestamp created_at;


}
