package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;

@Data
@Entity
@Table(name="forum_invites")
public class ForumInvites {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;

    @Column(name="invited_by",nullable=false)
    private String invited_by;

    @Column(name="invite_to",nullable=false)
    private String invite_to;

    @Column(name="invite_status",nullable=false)
    private Integer invite_status;

    @Column(name="forum",nullable=false)
    private String forum;

    @Column(name="sending_status",nullable=false)
    private Integer sending_status;

    @Column(name="accepted_at",nullable=true)
    private Date accepted_at;
    @Column(name="created_at",nullable=false)
    private Date created_at;

    @Column(name="updated_at",nullable=true)
    private Date updated_at;
    @Column(name="rejected_at",nullable=true)
    private Date rejected_at;
}
