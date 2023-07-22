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
@Table(name = "customers")
public class Customer {
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
	    

	    @Column(name = "created_at")
	    private String created_at;
	    @Column(name = "updated_at")
	    private String updated_at; 
	    

}
