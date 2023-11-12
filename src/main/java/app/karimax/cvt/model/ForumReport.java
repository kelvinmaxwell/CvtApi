package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.Data;

import java.sql.Timestamp;

@Data
@Entity
@Table(name="forum_report")
public class ForumReport {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;

    @Column(name="report_type",nullable=false)
    private String report_type;

    @Column(name="report_description",nullable=false)
    private String report_description;

    @Column(name="item_id",nullable=false)
    private String item_id;

    @Column(name="report_by",nullable=false)
    private String report_by;

    @Column(name="created_at",nullable=false)
    private Timestamp created_at;
}
