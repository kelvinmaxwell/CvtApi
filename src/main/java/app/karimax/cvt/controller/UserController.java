package app.karimax.cvt.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.UserService;

@RestController
@RequestMapping("/api/v1/users")
public class UserController {
	private UserService userService;
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}
	@GetMapping("savejob/{email}")
		public  ResponseEntity <User> getUserByEmail(@PathVariable("email") String email)
		
		{
		
			return new ResponseEntity <User>(userService.getbyEmailapp(email),HttpStatus.OK);
		}
	
	
}
