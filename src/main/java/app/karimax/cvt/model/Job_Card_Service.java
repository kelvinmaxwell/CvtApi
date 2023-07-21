package app.karimax.cvt.model;

import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity

@Table(name="job_card_service")
public class Job_Card_Service {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
	String job_card_id;
	String service_id;
	String mechanic_id;
	String estimated_repair_time;
	String description;
	String completed_at;
	
	@Transient
	  Mechanic mechanic;
	 
	@Transient
	User user;
	 
	@Transient
		Customer customer;
	 
	@Transient
		JobCard jobCard;
	
	
}
