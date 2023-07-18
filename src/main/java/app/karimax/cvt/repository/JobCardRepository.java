package app.karimax.cvt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;


public interface JobCardRepository extends JpaRepository<JobCard,Long>{
	
	@Query("select u from Job_Card_Service u WHERE u.job_card_id =?1")
	Job_Card_Service findByJobCard(String jobcardid);
	
	@Query("select u from Mechanic u WHERE u.id =?1")
	Mechanic findBymechid(Long mechid);
	
	@Query("select u from User u WHERE u.userable_id =?1 and  u.userable_type=?2")
	User findBymechuserableid(Long mechid,String userableid);
}
