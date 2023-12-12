package app.karimax.cvt.Serviceimpl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.List;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.JobCardDto;
import app.karimax.cvt.dto.VehicleDetailsDto;
import app.karimax.cvt.response.SuccessResponseHandler;
import org.springframework.stereotype.Service;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.JobCardRepository;
import app.karimax.cvt.service.JobCardService;
import app.karimax.cvt.service.UUIDGeneratorLogic;

@Service
public class JobCardServiceImpl  implements JobCardService{
	private JobCardRepository jobCardRepository;
	private Configs serviceConfig;
	  
	GetDate date=new GetDate("yyyy-MM-dd HH:mm");
	public JobCardServiceImpl(JobCardRepository jobCardRepository,Configs serviceConfig) {
		super();
		this.jobCardRepository = jobCardRepository;
		this.serviceConfig=serviceConfig;
	}
	@Override
	public JobCard saveJobCard(JobCard jobCard) {
		UUIDGeneratorLogic uuidGeneratorLogic=new UUIDGeneratorLogic();
		jobCard.setCreated_at(date.date());
		jobCard.setUpdated_at(date.date());
		jobCard.setReference("JC-"+uuidGeneratorLogic.generateID());
		// TODO Auto-generated method stub
		return jobCardRepository.save(jobCard);
	}
	@Override
	public Job_Card_Service checkallocated(JobCard jobCard) {
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
		List<JobCard> jobCard=jobCardRepository.findexistingmechbooking("Draft","mobile",String.valueOf(customerid));
		
		JobCard empltyCard=null;
		if(!(jobCard.isEmpty())) {
			
			return jobCard.get(jobCard.size()-1);
			
			}
		
		return empltyCard.builder().status("not assigned").build();
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
	@Override
	public JobCard getpratings(String customerid) {
		List<JobCard> pratingsCard=jobCardRepository.getpratings(customerid,"APP");
JobCard empltyCard=null;
		if(!(pratingsCard.isEmpty())) {
			
			return pratingsCard.get(pratingsCard.size()-1);
		}
		else {
			
			return empltyCard.builder().customer_rating("rated").build();
		}
		
	}
	@Override
	public JobCard submitrating(JobCard jobCard) {
		JobCard jcrd=jobCardRepository.findByJobCardId(String.valueOf(jobCard.getId()));
		if(!(jcrd==null)) {
			jcrd.setCustomer_rating(jobCard.getCustomer_rating());
			jcrd.setCustomer_remarks(jobCard.getCustomer_remarks());
			
			jcrd=jobCardRepository.save(jcrd);
			if(!(jcrd==null)) {
				return jcrd;
				
			}
			
			
		}
		return jcrd.builder().customer_remarks("not set").build();
	}

	@Override
	public ApiResponseDTO getJobCardhistory(Integer customerId) {
		List<Object[]> listGarageServices=jobCardRepository.getJobCardHistory(customerId);
		JobCardDto jobCardDto=new JobCardDto();

		List<JobCardDto> JobDetailsDtos=jobCardDto.mapToListOfObjects(listGarageServices);
		return new SuccessResponseHandler(serviceConfig,JobDetailsDtos).SuccResponse();
	}

	@Override
	public ApiResponseDTO getJobCardServices(Integer jobCradId) {
		return new SuccessResponseHandler(serviceConfig,jobCardRepository.getJobCardServices(jobCradId)).SuccResponse();
	}


}
