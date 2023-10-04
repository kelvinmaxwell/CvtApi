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
@Table(name = "quotation_service")
public class QuotationService {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "quotation_id")
    Integer quotation_id;
    @Column(name = "service_id")
    String service_id;
    @Column(name = "package")
    String packageName;

    @Column(name = "description")
    String description;


    @Column(name = "estimated_repair_time")
    private Double estimated_repair_time;

    @Column(name = "added_by")
    private Integer added_by;

    @Column(name = "updated_by")
    private Integer updated_by;

    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Date updated_at;



}
