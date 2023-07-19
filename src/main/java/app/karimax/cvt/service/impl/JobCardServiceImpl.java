package app.karimax.cvt.service.impl;

import java.util.Optional;

import org.springframework.stereotype.Service;

import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.JobCardRepository;
import app.karimax.cvt.service.JobCardService;

@Service
public class JobCardServiceImpl  implements JobCardService{
	private JobCardRepository jobCardRepository;
	
	public JobCardServiceImpl(JobCardRepository jobCardRepository) {
		super();
		this.jobCardRepository = jobCardRepository;
	}
	@Override
	public JobCard saveJobCard(JobCard jobCard) {
		// TODO Auto-generated method stub
		return jobCardRepository.save(jobCard);
	}
	@Override
	public Job_Card_Service checkalocated(JobCard jobCard) {
		Job_Card_Service jService=jobCardRepository.findByJobCard(String.valueOf(jobCard.getId()));
		if(!(jService==null)) {
			
					User usr=jobCardRepository.findByuserid(Long.parseLong(jService.getMechanic_id()));
		Mechanic mech=jobCardRepository.findBymechid(usr.getUserable_id());
		usr.setUserable_type("mechanic");
		jService.setUser(usr);
		
		jService.setMechanic(mech);			
			return jService;
			
			}
		
		return jService.builder().service_id("not assigned").build();
	}
	@Override
	public JobCard checkactivemechbooking(long customerid) {
		JobCard jobCard=jobCardRepository.findexistingmechbooking("Draft","mobile",String.valueOf(customerid));
		if(!(jobCard==null)) {
			
							
			return jobCard;
			
			}
		
		return jobCard.builder().status("not assigned").build();
	}
	@Override
	public Job_Card_Service getmechjob(long mechid) {
		Job_Card_Service jobcardservice=jobCardRepository.getmechjob(String.valueOf(mechid));
		if(!(jobcardservice==null)) {
			JobCard jobcard=jobCardRepository.findByJobCardId(jobcardservice.getJob_card_id());
			
	
			User usr=jobCardRepository.findByuserid(Long.valueOf(jobcard.getCustomer_id()));
					Customer cust=jobCardRepository.findBycustid(usr.getUserable_id());
		
		usr.setUserable_type("mechanic");
		
		jobcardservice.setCustomer(cust);
		
		jobcardservice.setJobCard(jobcard);
		jobcardservice.setUser(usr);
		
		
		
			
			return jobcardservice;
			
			}
		
		return Job_Card_Service.builder().service_id("not assigned").build();
	}
	
	


}
