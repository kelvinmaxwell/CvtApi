package app.karimax.cvt.service;

import java.util.ArrayList;



import app.karimax.cvt.model.VehicleBrand;
import app.karimax.cvt.model.EngineCapacity;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleYear;

public interface VehiclesService {
	    
	  ArrayList<VehicleBrand> getbrands();
	  ArrayList<VehicleModels> getmodels(String brand);
	  
	  ArrayList<VehicleYear> getyears(String brand,String model);
	  ArrayList<EngineCapacity> getEngineCapacity(String brand,String model,String year);
	  
	  
	  

	  
	  

	  

	  
}
