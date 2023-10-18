package app.karimax.cvt.controller;

import java.util.List;

import app.karimax.cvt.dto.ApiResponseDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.ProductCategories;
import app.karimax.cvt.model.ProductSubCategories;
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
	
	
	@GetMapping("getproductcategories")
	public ResponseEntity <List<ProductCategories>> getproductcategories(){
		
		return new ResponseEntity <List<ProductCategories>>(productsService.getproductcategories(),HttpStatus.OK);
		
		
	}
	
	@GetMapping("getproductsubcategories/{categoryid}")
	public ResponseEntity <List<ProductSubCategories>> getproductcategories(@PathVariable("categoryid") Integer categoryid){
		
		return new ResponseEntity <List<ProductSubCategories>>(productsService.getsubcategories(categoryid),HttpStatus.OK);
		
		
	}
	
	@GetMapping("getbysubcatmodel/{modelid}/{subcategoryid}")
	public ResponseEntity <List<products>> getbysubcatmodel(@PathVariable("modelid") long modelid,@PathVariable("subcategoryid") long subcategoryid){
		
		return new ResponseEntity <List<products>>(productsService.getbysubcatmodel(modelid,subcategoryid),HttpStatus.OK);
		
		
	}
	
	@GetMapping("getbyoem/{oem}")
	public ResponseEntity <List<products>> getbysubcatmodel(@PathVariable("oem") String oem){
		
		return new ResponseEntity <List<products>>(productsService.getbyoem(oem),HttpStatus.OK);
		
		
	}
	
	@GetMapping("getbychasisno/{chasisno}")
	public ResponseEntity <List<products>> getbychasisno(@PathVariable("chasisno") String chasisno ){
		
		return new ResponseEntity <List<products>>(productsService.getbychasisno(chasisno),HttpStatus.OK);
		
		
	}
	
	
	@GetMapping("getproductbyid/{id}")
	public ResponseEntity <List<products>> getbyid(@PathVariable("id") long id ){
		
		return new ResponseEntity <List<products>>(productsService.getbyid(id),HttpStatus.OK);
		
		
	}
	
	
	@GetMapping("getproductbymanufacturer/{id}/{name}")
	public ResponseEntity <List<products>> getproductbymanufacturer(@PathVariable("id") long vmodelid, @PathVariable("name") String  name){
		
		return new ResponseEntity <List<products>>(productsService.getproductbymanufacturer(vmodelid,name),HttpStatus.OK);
		
		
	}

	@GetMapping("returnProductsCategories")
	public ResponseEntity <ApiResponseDTO> getproductbymanufacturer(){

		return new ResponseEntity <ApiResponseDTO>(productsService.returnProductsCategories(),HttpStatus.OK);


	}

	@GetMapping("returnProductssubcategories/{id}")
	public ResponseEntity <ApiResponseDTO> returnProductssubcategories(@PathVariable("id") long categoryId){

		return new ResponseEntity <ApiResponseDTO>(productsService.returnProductssubcategories(categoryId),HttpStatus.OK);


	}



	@GetMapping("returnProductssubcategoriesproduct/{id}")
	public ResponseEntity <ApiResponseDTO> returnProductssubcategoriesproduct(@PathVariable("id") long SubcategoryId){

		return new ResponseEntity <ApiResponseDTO>(productsService.returnProductssubcategoriesproduct(SubcategoryId),HttpStatus.OK);


	}






	
	
	
	
	
	
	
	
	//get employees api rest api

//	@GetMapping("getEmployees")
//    public List<Employee> getAllEmployees(){
//		return employeeService.getAllEmployees();
//    	
//    }
//	
	
	
}
