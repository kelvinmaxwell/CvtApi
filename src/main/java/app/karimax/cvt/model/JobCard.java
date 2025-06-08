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
	Double amount;
	String garageName;
	
	
	

}
