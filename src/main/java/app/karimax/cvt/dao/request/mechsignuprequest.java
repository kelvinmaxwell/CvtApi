package app.karimax.cvt.dao.request;

import org.junit.validator.PublicClassValidator;
import org.springframework.web.multipart.MultipartFile;

import app.karimax.cvt.model.Role;
import app.karimax.cvt.model.User;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class mechsignuprequest {
	
	 

	  
	    

	   
	    private String first_name;
	    
	    
	
	    private String last_name;
	    
	    private String badge;
	    private String gender;
	    
	    
	    private String specialized;
	    

	    

	    
	    
	   
	    
	    
	    private String blue_collar_position;
	    
	   
	    private String next_of_kin;
	    
	  
	    private String car_make_and_model;
	    
	
	    private String country;
	    
	    
	  
	    private String city;
	    

	 
	 
	    
	    
	    
	    private String resume_file_path; 
	    
	
	   
	    private String email;
	  
	    private String phone_number;
	    private String password;
	    private String otp_code;
	    private String otp_code_expires_at;
	    private String otp_verified_at;
	    

	    private String userable_type;
	   
	    private long userable_id;
	    
	  
	    

	    
	  

}
