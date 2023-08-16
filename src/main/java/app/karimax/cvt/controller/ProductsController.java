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

import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.products;
import app.karimax.cvt.service.EmployeeService;
import app.karimax.cvt.service.ProductsService;


@RestController
@RequestMapping("/api/v1/products")
public class ProductsController {

	private ProductsService productsService;

	public ProductsController(ProductsService productsService) {
		super();
		this.productsService = productsService;
	}
	
	
	@GetMapping("getproductsbymodel/{vmodel}")
	public ResponseEntity <List<products>> saveEmployee(@PathVariable("vmodel") Integer vehicle_model_id){
		
		return new ResponseEntity <List<products>>(productsService.getproductsbymodel(vehicle_model_id),HttpStatus.OK);
		
		
	}
	
	
	
	//get employees api rest api

//	@GetMapping("getEmployees")
//    public List<Employee> getAllEmployees(){
//		return employeeService.getAllEmployees();
//    	
//    }
//	
	
	
}
