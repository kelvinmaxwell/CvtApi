package app.karimax.cvt.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.model.AuthTokenResponse;
import app.karimax.cvt.model.User;
import app.karimax.cvt.service.MpesaGenAuth;
import app.karimax.cvt.service.UserService;

@RestController
@RequestMapping("/api/v1/mpesa")
public class MpesaController {
	

		
		@GetMapping("/genauth")
			public  ResponseEntity <AuthTokenResponse> getUserByEmail()
			
			{
			
				return new ResponseEntity <AuthTokenResponse>(new MpesaGenAuth().returnauth(),HttpStatus.OK);
			}


}
