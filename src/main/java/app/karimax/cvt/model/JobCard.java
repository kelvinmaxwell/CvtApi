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

import java.sql.Timestamp;


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
	String customerId;
	Long vehicleId;
	Long garageId;
	String issueDescription;
	String  status;
	String  source;
	String createdBy;
	String completedAt;
	String customerRating;
	String customerRemarks;
	Timestamp createdAt;
	Timestamp updatedAt;
	
	
	

}
