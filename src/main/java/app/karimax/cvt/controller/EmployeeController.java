package app.karimax.cvt.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.model.Employee;
import app.karimax.cvt.service.EmployeeService;



@RestController
@RequestMapping("/api/employees")
public class EmployeeController {
	
	private EmployeeService employeeService;

	public EmployeeController(EmployeeService employeeService) {
		super();
		this.employeeService = employeeService;
	}
	
	
	//build create employtee rest api
	@PostMapping
	public ResponseEntity<Employee> saveEmployee(@RequestBody Employee employee){
		
		return new ResponseEntity<Employee>(employeeService.saveEmployee(employee),HttpStatus.CREATED);
		
		
	}
	
	
	
	//get employees api rest api

	@GetMapping("getEmployees")
    public List<Employee> getAllEmployees(){
		return employeeService.getAllEmployees();
    	
    }
	
	//build get employee by id api
	@GetMapping("getEmployee/{id}")
	public ResponseEntity<Employee> getEmployeeById(@PathVariable("id") long employeeId)
	
	{
	
		return new ResponseEntity<Employee>(employeeService.getEmplyeeById(employeeId),HttpStatus.OK);
	}
	
	//build get employee by id name
		@GetMapping("getEmployeebyemail/{email}")
		public  ResponseEntity<List<Employee>> getEmployeeByName(@PathVariable("email") String email)
		
		{
		
			return new ResponseEntity<List<Employee>>( employeeService.findByEmail(email),HttpStatus.OK);
		}
		
		

		//get name
			@GetMapping("getEmployeename/{name}")
			@ResponseBody
         public  ResponseEntity<String> findAdultUserByname(@PathVariable("name") String name)
			
			{
			
				return new ResponseEntity<String>( employeeService.findAdultUserByEmail(name),HttpStatus.OK);
			}
	
	//build update employee rest
	@PutMapping("updateEmployee/{id}")
	public  ResponseEntity<Employee> updateEmployee(@PathVariable("id") long employeeId,@RequestBody Employee employee) {
		
		
		return new ResponseEntity<Employee>(employeeService.updateEmployee(employee,employeeId),HttpStatus.OK);
	}
	
	//build delete employee rest api
	@DeleteMapping("deleteEmployee/{id}")
	public ResponseEntity<String> deleteEmployee(@PathVariable("id") long employeeId) {
		employeeService.deleteEmployee(employeeId);
		return new ResponseEntity<String>("Employee deleted successfully!",HttpStatus.OK);
	}

}
