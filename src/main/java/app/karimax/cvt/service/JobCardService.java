package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.User;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.response.PhonVerResponse;

public interface JobCardService {
	
	  
	  JobCard saveJobCard(JobCard jobCard);
	  
	  Job_Card_Service  checkallocated(JobCard jobCard);
	  
	  
	  JobCard  checkactivemechbooking(long customerid);
	  
	  
	  Job_Card_Service  getmechjob(long  mechid);
	  
	  JobCard getpratings(String customerid);
	  JobCard submitrating(JobCard jobCard);
	ApiResponseDTO getJobCardhistory(Integer customerId);

}
