package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "managers")
public class Manager {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "reference")
    private String reference;

    @Column(name = "first_name")
    private String first_name;


    @Column(name = "last_name")
    private String last_name;

    @Column(name = "gender")
    private String gender;
    @Column(name = "garage_id")
    private long garageId;




    @Column(name = "next_of_kin")
    private String next_of_kin;

//	    @Column(name = "car_make_and_model")
//	    private String car_make_and_model;

    @Column(name = "country")
    private String country;


    @Column(name = "city")
    private String city;



    @Column(name = "current_address")
    private String current_address;



    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Timestamp updated_at;


    @Column(name = "resume_file_path")
    private String resume_file_path;
}
