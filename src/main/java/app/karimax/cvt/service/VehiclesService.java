package app.karimax.cvt.service;

import java.util.ArrayList;



import app.karimax.cvt.model.VehicleBrand;
import app.karimax.cvt.model.VehicleDetails;
import app.karimax.cvt.dao.request.VehicleRequest;
import app.karimax.cvt.model.EngineCapacity;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleYear;
import app.karimax.cvt.model.Vehicles;

public interface VehiclesService {
	    
	  ArrayList<VehicleBrand> getbrands();
	  ArrayList<VehicleModels> getmodels(String brand);
	  
	  ArrayList<VehicleYear> getyears(String brand,String model);
	  ArrayList<EngineCapacity> getEngineCapacity(String brand,String model,String year);
	  Vehicles savevehicle(VehicleRequest vehicleRequest);
	  ArrayList<VehicleDetails> getcustomervehicles(long id);
	  
	 
	  
	  
	  

	  
	  

	  

	  
}
