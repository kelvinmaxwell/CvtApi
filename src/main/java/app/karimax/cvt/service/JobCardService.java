package app.karimax.cvt.service;

import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.User;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.response.PhonVerResponse;

public interface JobCardService {
	
	  
	  JobCard saveJobCard(JobCard jobCard);
	  
	  Job_Card_Service  checkalocated(JobCard jobCard);
	  
	  
	  JobCard  checkactivemechbooking(long customerid);
	  
	  
	  Job_Card_Service  getmechjob(long  mechid);
	  

}
