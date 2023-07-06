package app.karimax.cvt.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.JwtAuthenticationResponse;
import app.karimax.cvt.service.AuthenticationService;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {
	
	private final UserService userService;
	
    private final AuthenticationService authenticationService;
    @PostMapping("/signup")
    public ResponseEntity<JwtAuthenticationResponse> signup(@RequestBody SignUpRequest request) {
    
        return ResponseEntity.ok(authenticationService.signup(request));
    }

    @PostMapping("/signin")
    public ResponseEntity<JwtAuthenticationResponse> signin(@RequestBody SigninRequest request) {
        return ResponseEntity.ok(authenticationService.signin(request));
    }
    
    @GetMapping("getUserphone/{phone}")
	public  ResponseEntity <User> getUserByPhone(@PathVariable("phone") String phone)
	
	{
	
		return new ResponseEntity <User>(userService.findByphone(phone),HttpStatus.OK);
	}
    
    
    @GetMapping("phonever/{phone}")
  	public  ResponseEntity <User> phoneverification(@PathVariable("phone") String phone)
  	
  	{
  	
  		return new ResponseEntity <User>(userService.findByphone(phone),HttpStatus.OK);
  	}
    
    
    
    
  //build get employee by id name
  		
  		
}
