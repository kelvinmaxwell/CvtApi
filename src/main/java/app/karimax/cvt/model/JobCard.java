package app.karimax.cvt.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
@Table(name="job_cards")
public class JobCard {
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private long id;
	String  reference;
	String  customer_id;
	String  vehicle_id;
	String issue_description;
	String  status;
	String  source;
	String created_by;
	
	
	

}
