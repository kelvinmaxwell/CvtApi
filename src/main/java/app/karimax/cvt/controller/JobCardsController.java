package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
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
        return ResponseEntity.ok(jobCardService.checkallocated(jobCard));
    }
    
    @GetMapping("/checkactivemechbooking/{id}")
    public ResponseEntity<JobCard> checkactivemechbooking(@PathVariable("id") long customerid) {
        return ResponseEntity.ok(jobCardService.checkactivemechbooking(customerid));
    }
    
    @GetMapping("/getmechjob/{id}")
    public ResponseEntity<Job_Card_Service> getmechjob(@PathVariable("id") long mechid) {
        return ResponseEntity.ok(jobCardService.getmechjob(mechid));
    }
    
    
    @GetMapping("/getprarings/{id}")
    public ResponseEntity<JobCard> getprarings(@PathVariable("id") String custid) {
        return ResponseEntity.ok(jobCardService.getpratings(custid));
    }
    
    @PostMapping("/submitrating")
    public ResponseEntity<JobCard> submitrating(@RequestBody JobCard jobCard) {
        return ResponseEntity.ok(jobCardService.submitrating(jobCard));
    }



    @GetMapping("/getJobCardhistory/{customerid}")
    public ResponseEntity<ApiResponseDTO> getJobCardhistory(@PathVariable("customerid") Integer customerid) {
        return ResponseEntity.ok(jobCardService.getJobCardhistory(customerid));
    }

    @GetMapping("/getJobCardhistory/{customerid}/{vehicleid}")
    public ResponseEntity<ApiResponseDTO> getJobCardhistoryvid(@PathVariable("customerid") Integer customerid,@PathVariable("vehicleid") Integer vehicleid) {
        return ResponseEntity.ok(jobCardService.getJobCardhistoryVehicle(customerid,vehicleid));
    }


    @GetMapping("/getJobCardServices/{jobCardId}")
    public ResponseEntity<ApiResponseDTO> getJobCardServices(@PathVariable("jobCardId") Integer jobCardId) {
        return ResponseEntity.ok(jobCardService.getJobCardServices(jobCardId));
    }



    
    
    
	
	
	
    

}
