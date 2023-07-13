package app.karimax.cvt.controller;


import java.util.Base64;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.response.JwtAuthenticationResponse;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.service.AuthenticationService;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.FileStorageService;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {
	
	private final UserService userService;
	
	@Autowired

	  private FileStorageService fileStorageService;

	  @Autowired

	  private ObjectMapper objectMapper;
	  private mechsignuprequest response=new mechsignuprequest();
	
    private final AuthenticationService authenticationService;
    @PostMapping("/signup")
    public ResponseEntity<JwtAuthenticationResponse> signup(@RequestBody SignUpRequest request) {
    
        return ResponseEntity.ok(authenticationService.signup(request));
    }

    @PostMapping("/signin")
    public ResponseEntity<JwtAuthenticationResponse> signin(@RequestBody SigninRequest request) {
        return ResponseEntity.ok(authenticationService.signin(request));
    }
    
    
    @PostMapping("/mechsignup")
    public ResponseEntity<User> mechsignup(@RequestBody mechsignuprequest request) throws JsonProcessingException {
    	
    	 MultipartFile multipartFile=null;
    	 
    	 System.out.print(request.getResume_file_path());
    	
    
    	 try {
			File file = File.createTempFile("image", ".png");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
//    	 String carg=null;
//		try {
//			carg = URLDecoder.decode(request.getResume_file_path(), "UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//    	 carg = carg.replace("\n","");
    	 
    	byte[] decodedBytes = Base64.getMimeDecoder().decode(request.getResume_file_path());
    	
    	 ByteArrayInputStream inputStream = new ByteArrayInputStream(decodedBytes);
    	
		try {
			multipartFile = new MockMultipartFile("file.png", inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    	String fileName = fileStorageService.storeFile(multipartFile);

		  ServletUriComponentsBuilder.fromCurrentContextPath().path(fileName).toUriString();

  	   

		  request.setResume_file_path(fileName);
    
    	return new ResponseEntity<User>(authenticationService.savemechanicbio(request),HttpStatus.OK);
    }

    @PostMapping("/mechsignin")
    public ResponseEntity<JwtAuthenticationResponse> mechsignin(@RequestBody SigninRequest request) {
        return ResponseEntity.ok(authenticationService.signin(request));
    }
    
    
    
    
    
    
    
    
    
    @GetMapping("getUserphone/{phone}")
	public  ResponseEntity <User> getUserByPhone(@PathVariable("phone") String phone)
	
	{
	
		return new ResponseEntity <User>(userService.findByphone(phone),HttpStatus.OK);
	}
    
    
    @GetMapping("getUseremail/{email}")
	public  ResponseEntity <User> getUserByEmail(@PathVariable("email") String email)
	
	{
	
		return new ResponseEntity <User>(userService.getbyEmailapp(email),HttpStatus.OK);
	}
    
    
    @GetMapping("phonever/{phone}")
  	public  ResponseEntity <User> phoneverification(@PathVariable("phone") String phone)
  	
  	{
  	
  		return new ResponseEntity <User>(userService.findByphone(phone),HttpStatus.OK);
  	}
    
    @PostMapping("/PhonVerResponse")
    public ResponseEntity<PhonVerResponse> phonever(@RequestBody User user) {
    	
    	
        return new  ResponseEntity <PhonVerResponse>(userService.addvercode(user),HttpStatus.OK);
    }
    
    
    
    @PostMapping("/Confirmcode")
    public ResponseEntity<PhonVerResponse> confirmcode(@RequestBody User user) {
    	
    	
        return new  ResponseEntity <PhonVerResponse>(userService.confirmcode(user),HttpStatus.OK);
    }
    
    
    
    
  //build get employee by id name
  		
  		
}
