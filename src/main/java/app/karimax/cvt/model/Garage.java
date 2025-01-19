package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "garages")
public class Garage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "reference")
    private String reference;
    @Column(name = "name")
    private String name;
    @Column(name = "garage_specialization_id")
    private String garage_specialization_id;

    @Column(name = "country")
    private String country;
    @Column(name = "city")
    private String city;
    @Column(name = "garage_location")
    private String garage_location;
    @Column(name = "city_council_approval_path")
    private String city_council_approval_path;
    @Column(name = "fire_extinguisher_file_path")
    private String fire_extinguisher_file_path;
    @Column(name = "business_registration_file_path")
    private String business_registration_file_path;

    @Column(name = "status")
    private String status;

    @Column(name = "type")
    private Integer type;

    @Column(name = "created_at")
    private Date created_at;
    @Column(name = "updated_at")
    private Date updated_at;

    @Column(name = "deleted_at")
    private Date deleted_at;






}
