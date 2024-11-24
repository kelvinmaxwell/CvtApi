package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "quotations")
public class Quotations {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "reference")
    String reference;
    @Column(name = "job_card_id")
    String job_card_id;
    @Column(name = "title")
    String title;

    @Column(name = "garage_id")
    private Integer garage_id;

    @Column(name = "customer_id")
    private Integer customer_id;

    @Column(name = "vehicle_id")
    private Long vehicle_id;

    @Column(name = "issue_description")
    private String issue_description;

    @Column(name = "initiated_by")
    private Integer initiated_by;

    @Column(name = "status")
    private String status;

    @Column(name = "rejected_by")
    private Integer rejected_by;
    @Column(name = "accepted_by")
    private Integer accepted_by;

    @Column(name = "accepted_at")
    private Date accepted_at;
    @Column(name = "rejected_at")
    private Date rejected_at;

    @Column(name = "deleted_at")
    private Date deleted_at;
    @Column(name = "created_at")
    private Timestamp created_at;



}
