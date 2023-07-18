package app.karimax.cvt.service.impl;

import org.springframework.stereotype.Service;

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
			
					Mechanic mec=jobCardRepository.findBymechid(Long.parseLong(jService.getMechanic_id()));
		User usr=jobCardRepository.findBymechuserableid(mec.getId(),"App\\Models\\Mechanic");
		usr.setUserable_type("mechanic");
		jService.setUser(usr);
		
		jService.setMechanic(mec);			
			return jService;
			
			}
		
		return jService.builder().service_id("not assigned").build();
	}
	
	


}
