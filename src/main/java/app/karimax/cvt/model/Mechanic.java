package app.karimax.cvt.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.PrimaryKeyJoinColumn;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "mechanics")
public class Mechanic {
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
	    
	    @Column(name = "specialized")
	    private String specialized;
	    
	    @Column(name = "badge")
	    private String badge;
	    
	    @Column(name = "mechanic_status_id")
	    private String mechanic_status_id;
	    
	    
	    @Column(name = "mechanic_type")
	    private String mechanic_type;
	    
	    @Column(name = "blue_collar_position")
	    private String blue_collar_position;
	    
	    @Column(name = "next_of_kin")
	    private String next_of_kin;
	    
	    @Column(name = "car_make_and_model")
	    private String car_make_and_model;
	    
	    @Column(name = "country")
	    private String country;
	    
	    
	    @Column(name = "city")
	    private String city;
	    
	    
	    @Column(name = "current_address")
	    private String current_address;
	    
	    @Column(name = "hourly_rate")
	    private String hourly_rate; 
	    
	    
	    @Column(name = "resume_file_path")
	    private String resume_file_path; 
	    

	    
	  

	   
	    
	    

}
