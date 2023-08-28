package app.karimax.cvt.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.dao.request.productSaveRequest;
import app.karimax.cvt.model.AuthTokenResponse;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.Mpesa1ResponseBody;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.MpesaGenAuth;
import app.karimax.cvt.service.MpesaService;
import app.karimax.cvt.service.UserService;
import app.karimax.cvt.service.mpesaProductService;
import app.karimax.cvt.service.impl.MpesaImplementation;
import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/mpesa")
public class MpesaController {
	
	
	private final  MpesaService mpesaService;
	private final mpesaProductService mpesaProductService;

		
		


		

		@PostMapping("/initiaterequest")
			public  ResponseEntity <Mpesa1ResponseBody> InitiateRequest(@RequestBody PhoneRequest request)
			
			{
			
				return new ResponseEntity <Mpesa1ResponseBody>(mpesaService.sendrequest(request),HttpStatus.OK);
			}
		
		@GetMapping("getjobcardstatus/{id}")
		public  ResponseEntity <JobCard> getUserByEmail(@PathVariable("id") Long id)
		
		{
		
			return new ResponseEntity <JobCard>(mpesaService.getjobByID(id),HttpStatus.OK);
		}
		
		
		@PostMapping("/sendrequest")
		public  ResponseEntity <Mpesa1ResponseBody> sendrequest(@RequestBody productSaveRequest request)
		
		{
		
			return new ResponseEntity <Mpesa1ResponseBody>(mpesaProductService.sendrequest(request),HttpStatus.OK);
		}


}
