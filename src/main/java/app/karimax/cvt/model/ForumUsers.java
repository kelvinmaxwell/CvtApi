package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@Data
@Entity
@Table(name="forum_users")
public class ForumUsers {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;
    Integer user_id;
    @Column(name="roles_id",nullable=true)
    Integer roles_id;
    @Column(name="forum_id",nullable=true)
    Integer forum_id;
    @Column(name="is_terms_agreed",nullable=true)
    Integer is_terms_agreed;
    @Column(name="receive_forum_notifications",nullable=true)
    Integer receive_forum_notifications;

    @Column(name="updated_at",nullable=true)
    private Date updated_by;


    @Column(name="created_at",nullable=false)
    private Timestamp created_at;
}
