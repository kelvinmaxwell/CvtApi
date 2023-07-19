package app.karimax.cvt.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.response.JwtAuthenticationResponse;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.JobCardService;

@RestController
@RequestMapping("/api/v1/jobcards")
public class JobCardsController {
	
	private JobCardService jobCardService;

	public JobCardsController(JobCardService jobCardService) {
		super();
		this.jobCardService = jobCardService;
	}
	
	@PostMapping("/savejobcard")
    public ResponseEntity<JobCard> saveJob(@RequestBody JobCard jobCard) {
        return ResponseEntity.ok(jobCardService.saveJobCard(jobCard));
    }
	
	@PostMapping("/checkallocated")
    public ResponseEntity<Job_Card_Service> checkallocated(@RequestBody JobCard jobCard) {
        return ResponseEntity.ok(jobCardService.checkalocated(jobCard));
    }
    
    @GetMapping("/checkactivemechbooking/{id}")
    public ResponseEntity<JobCard> checkactivemechbooking(@PathVariable("id") long customerid) {
        return ResponseEntity.ok(jobCardService.checkactivemechbooking(customerid));
    }
    
    @GetMapping("/getmechjob/{id}")
    public ResponseEntity<Job_Card_Service> getmechjob(@PathVariable("id") long mechid) {
        return ResponseEntity.ok(jobCardService.getmechjob(mechid));
    }
    
    
    
    
	
	
	
    

}
