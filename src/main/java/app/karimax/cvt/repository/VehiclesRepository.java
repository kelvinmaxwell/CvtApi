package app.karimax.cvt.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Model;
import app.karimax.cvt.model.User;
import app.karimax.cvt.model.VehicleDetails;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleModelsDao;
import app.karimax.cvt.model.Vehicles;

public interface VehiclesRepository extends JpaRepository<Vehicles, Long> {

	
	
   
   @Query(value =  "SELECT model_name  FROM vehicle_models WHERE brand = ?1 ", nativeQuery = true)
          ArrayList<String>  findmodelsbymodel(String barand);
   
   @Query(value =  "SELECT year_of_manufacture  FROM vehicle_models WHERE brand = ?1 and model_name=?2", nativeQuery = true)
   ArrayList<String>  findyears(String brand,String model);
   
   @Query(value =  "SELECT engine_capacity  FROM vehicle_models WHERE brand = ?1 and model_name=?2 and year_of_manufacture=?3 ", nativeQuery = true)
   ArrayList<String>  findEnginecc(String brand,String model,String year);
   
   @Query("SELECT v  FROM VehicleModelsDao v WHERE v.brand = ?1 and v.model_name=?2 and v.year_of_manufacture=?3 and v.engine_capacity=?4 ")
   VehicleModelsDao  findmodelid(String brand,String model,String year,String enginecc);
   
   @Query("SELECT v  FROM VehicleDetails v WHERE v.vehicle_registration_plate = ?1")
   VehicleDetails  findexistingveiclereg(String vehicle_registration_plate);
   
   @Query("SELECT v  FROM Vehicles v WHERE v.customer_id = ?1")
   ArrayList<Vehicles>  findvehiclebycust(Long  customerid);
   

   @Query("SELECT v  FROM VehicleDetails v WHERE v.vehicle_id = ?1")
   VehicleDetails  findvehiclebyvid(Long  vehicleid);
   
   @Query("SELECT v  FROM Vehicles v WHERE v.id = ?1")
   Vehicles  findvehiclebyid(Long  id);
}
