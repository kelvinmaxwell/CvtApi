package app.karimax.cvt.service;

import java.util.ArrayList;
import java.util.Optional;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.registration.CarDto;
import app.karimax.cvt.dto.registration.UserDto;
import app.karimax.cvt.model.*;
import app.karimax.cvt.dao.request.VehicleRequest;
import org.springframework.web.multipart.MultipartFile;

public interface VehiclesService {
	    
	 ApiResponseDTO getbrands();
	ApiResponseDTO getmodels(String brand);

	ApiResponseDTO saveUserRegestration(MultipartFile image, CarDto carDto, UserDto userDto);
	ApiResponseDTO saveUserVehicle(MultipartFile image, CarDto carDto);

	ApiResponseDTO getyears(String brand,String model);
	ApiResponseDTO gettrims(String brand, String model, String year);
	ApiResponseDTO getEngineCapacity(String brand,String model,String year);
	  Vehicles savevehicle(VehicleRequest vehicleRequest);
	  ArrayList<VehicleDetails> getcustomervehicles(long id);
	  VehicleModelsDao returnmodelid(VehicleRequest vehicleRequest);
	  
	  Vehicles getvmodelid(long id);

	  ApiResponseDTO getCustomerVehicles(Long userId);

	  ApiResponseDTO getVehicleDetailsByReg(String regno);
	  
	 
	  
	  
	  

	  
	  

	  

	  
}
