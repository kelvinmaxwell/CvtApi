package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.MpesaPayments;

public interface MpesaReposotory extends JpaRepository<Invoices,Long>{
	
	
	@Query("select u from Invoices u WHERE u.job_card_id =?1")
	Invoices getbyJobCard(String jobcard);
	
	@Query("select u from Invoices u WHERE u.id =?1")
	Invoices findbyinvid(Long invoice);
	

}
