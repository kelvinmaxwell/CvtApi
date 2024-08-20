package app.karimax.cvt.controller;

import java.util.ArrayList;
import java.util.Optional;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.registration.CarDto;
import app.karimax.cvt.dto.registration.UserDto;
import app.karimax.cvt.model.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.dao.request.VehicleRequest;
import app.karimax.cvt.response.Mpesa1ResponseBody;
import app.karimax.cvt.service.VehiclesService;
import org.springframework.web.multipart.MultipartFile;
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/vehicles")
public class VehiclesController {
	private final VehiclesService vehiclesService;
	private final  ObjectMapper objectMapper;

	@GetMapping("brands")
		public   ResponseEntity <ApiResponseDTO>  getbrands()
		
		{
		
			return new ResponseEntity <>(vehiclesService.getbrands(),HttpStatus.OK);
		}
	
	
	
	@GetMapping("models/{brand}")
	public  ResponseEntity <ApiResponseDTO> getmodels(@PathVariable("brand") String brand)
	
	{
	
		return new ResponseEntity <>(vehiclesService.getmodels(brand),HttpStatus.OK);
	}
	
	@GetMapping("years/{brand}/{model}")
	public  ResponseEntity <ApiResponseDTO> getyear(@PathVariable("brand") String brand,@PathVariable("model") String model)
	
	{
	
		return new ResponseEntity <>(vehiclesService.getyears(brand,model),HttpStatus.OK);
	}

    @GetMapping("trim/{brand}/{model}/{year}")
    public  ResponseEntity <ApiResponseDTO> gettrim(@PathVariable("brand") String brand, @PathVariable("model") String model, @PathVariable("year") String year)

    {

        return new ResponseEntity <>(vehiclesService.gettrims(brand,model,year),HttpStatus.OK);
    }
	
	@GetMapping("enginecapacity/{brand}/{model}/{year}")
	public  ResponseEntity <ApiResponseDTO> getEnginecc(@PathVariable("brand") String brand,@PathVariable("model") String model,@PathVariable("year") String year)
	
	{
	
		return new ResponseEntity <>(vehiclesService.getEngineCapacity(brand,model,year),HttpStatus.OK);
	}



	
	@PostMapping("/savevehicle")
	public  ResponseEntity <Vehicles> SaveVehicle(@RequestBody VehicleRequest request)
	
	{
	
		return new ResponseEntity <Vehicles>(vehiclesService.savevehicle(request),HttpStatus.OK);
	}
	@PostMapping("/saveUserCarData")
	public  ResponseEntity <ApiResponseDTO>  uploadUserCarData(
			@RequestPart("image") MultipartFile image,
			@RequestPart("car") String carJson,
			@RequestPart("user") String userJson) throws JsonProcessingException {

		CarDto car = objectMapper.readValue(carJson, CarDto.class);
		UserDto user = objectMapper.readValue(userJson, UserDto.class);

		return new ResponseEntity <>(vehiclesService.saveUserRegestration(image,car,user),HttpStatus.OK);
	}
	
	
	@GetMapping("/getvehiclereg/{customer_id}")
	public  ResponseEntity <ArrayList<VehicleDetails>> getCustomerVehicles(@PathVariable("customer_id") long customer_id)
	
	{
	
		return new ResponseEntity <ArrayList<VehicleDetails>> (vehiclesService.getcustomervehicles(customer_id),HttpStatus.OK);
	}
	
	
	@PostMapping("/getmodeldetails")
	public  ResponseEntity <VehicleModelsDao> getmodelid(@RequestBody VehicleRequest request)
	
	{
	
		return new ResponseEntity <VehicleModelsDao>(vehiclesService.returnmodelid(request),HttpStatus.OK);
	}
	
	@GetMapping("/getvehiclebyid/{vehicleid}")
	public  ResponseEntity <Vehicles> getvmodelid(@PathVariable("vehicleid") long vehicleid)
	
	{
	
		return new ResponseEntity <Vehicles>(vehiclesService.getvmodelid(vehicleid),HttpStatus.OK);
	}


	@GetMapping("/getCustomerVehicles/{customerid}")
	public  ResponseEntity <ApiResponseDTO> getCustomerVehicles(@PathVariable("customerid") Integer customerid)

	{

		return new ResponseEntity <ApiResponseDTO>(vehiclesService.getCustomerVehicles(customerid),HttpStatus.OK);
	}


	@GetMapping("/getvehicledetailsbyreg/{vregno}")
	public  ResponseEntity <ApiResponseDTO> getVehicleDetailsByReg(@PathVariable("vregno") String vregno)

	{

		return new ResponseEntity <ApiResponseDTO>(vehiclesService.getVehicleDetailsByReg(vregno),HttpStatus.OK);
	}


	
	
	
}

