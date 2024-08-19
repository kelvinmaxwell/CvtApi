package app.karimax.cvt.service;

import java.util.ArrayList;
import java.util.Optional;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.*;
import app.karimax.cvt.dao.request.VehicleRequest;

public interface VehiclesService {
	    
	 ApiResponseDTO getbrands();
	ApiResponseDTO getmodels(String brand);
	  
	  ArrayList<VehicleYear> getyears(String brand,String model);
	ArrayList<VehicleTrim> gettrims(String brand, String model, String year);
	  ArrayList<EngineCapacity> getEngineCapacity(String brand,String model,String year);
	  Vehicles savevehicle(VehicleRequest vehicleRequest);
	  ArrayList<VehicleDetails> getcustomervehicles(long id);
	  VehicleModelsDao returnmodelid(VehicleRequest vehicleRequest);
	  
	  Vehicles getvmodelid(long id);

	  ApiResponseDTO getCustomerVehicles(Integer customerId);

	  ApiResponseDTO getVehicleDetailsByReg(String regno);
	  
	 
	  
	  
	  

	  
	  

	  

	  
}
