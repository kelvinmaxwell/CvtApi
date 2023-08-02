package app.karimax.cvt.controller;

import java.util.ArrayList;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import app.karimax.cvt.model.VehicleBrand;
import app.karimax.cvt.model.EngineCapacity;
import app.karimax.cvt.model.Model;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleYear;
import app.karimax.cvt.service.VehiclesService;

@RestController
@RequestMapping("/api/v1/vehicles")
public class VehiclesController {
	private VehiclesService vehiclesService;
	public VehiclesController(VehiclesService vehiclesService) {
		super();
		this.vehiclesService = vehiclesService;
	}
	@GetMapping("brands")
		public  ResponseEntity <ArrayList<VehicleBrand>> getbrands()
		
		{
		
			return new ResponseEntity <ArrayList<VehicleBrand>>(vehiclesService.getbrands(),HttpStatus.OK);
		}
	
	
	
	@GetMapping("models/{brand}")
	public  ResponseEntity <ArrayList<VehicleModels>> getmodels(@PathVariable("brand") String brand)
	
	{
	
		return new ResponseEntity <ArrayList<VehicleModels>>(vehiclesService.getmodels(brand),HttpStatus.OK);
	}
	
	@GetMapping("years/{brand}/{model}")
	public  ResponseEntity <ArrayList<VehicleYear>> getyear(@PathVariable("brand") String brand,@PathVariable("model") String model)
	
	{
	
		return new ResponseEntity <ArrayList<VehicleYear>>(vehiclesService.getyears(brand,model),HttpStatus.OK);
	}
	
	@GetMapping("enginecapacity/{brand}/{model}/{year}")
	public  ResponseEntity <ArrayList<EngineCapacity>> getEnginecc(@PathVariable("brand") String brand,@PathVariable("model") String model,@PathVariable("year") String year)
	
	{
	
		return new ResponseEntity <ArrayList<EngineCapacity>>(vehiclesService.getEngineCapacity(brand,model,year),HttpStatus.OK);
	}
	
	
}

