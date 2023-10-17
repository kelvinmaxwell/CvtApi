package app.karimax.cvt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;


public interface JobCardRepository extends JpaRepository<JobCard,Long>{
	
	@Query("select u from Job_Card_Service u WHERE u.job_card_id =?1 and u.completed_at=null")
	Job_Card_Service findByJobCard(String jobcardid);
	
	@Query("select u from JobCard u WHERE u.id =?1")
	JobCard findByJobCardId(String jobcardid);
	
	@Query("select u from Mechanic u WHERE u.id =?1")
	Mechanic findBymechid(Long mechid);
	
	@Query("select u from Customer u WHERE u.id =?1")
	Customer findBycustid(Long custid);
	
	@Query("select u from User u WHERE u.id =?1 ")
	User findByuserid(Long userid);
	
	
	
	
	
	
	@Query("select u from JobCard u where u.status=?1 and u.source=?2 and u.customer_id=?3")
	List<JobCard> findexistingmechbooking(String status,String source,String customerid);
	
	
	
	@Query("select u from Job_Card_Service u where u.mechanic_id=?1 and u.completed_at=null")
	Job_Card_Service getmechjob(String mechid);
	
	@Query("select u from JobCard u  where  u.customer_id=?1 and u.customer_rating=null and u.created_by=?2")
	List<JobCard> getpratings(String custid,String createdby);

	@Query(value="select job_cards.reference as reference,vehicle_details.vehicle_registration_plate as vehicleRegistration,job_cards.issue_description as description ,job_cards.completed_at as closedAt,garages.name as garageName    from job_cards inner join garages on garages.id=job_cards.garage_id inner join vehicle_details on vehicle_details.vehicle_id=job_cards.vehicle_id where job_cards.customer_id=?1 ;", nativeQuery = true)
	List<Object[]> getJobCardHistory(Integer customerId);

	
}
