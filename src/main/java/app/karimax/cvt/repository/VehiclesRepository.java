package app.karimax.cvt.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Model;
import app.karimax.cvt.model.User;

public interface VehiclesRepository extends JpaRepository<User, Long> {

	
	
   
   @Query(value =  "SELECT model_name  FROM vehicle_models WHERE brand = ?1 ", nativeQuery = true)
          ArrayList<String>  findmodelsbymodel(String barand);
   
   @Query(value =  "SELECT year_of_manufacture  FROM vehicle_models WHERE brand = ?1 and model_name=?2", nativeQuery = true)
   ArrayList<String>  findyears(String brand,String model);
   
   @Query(value =  "SELECT engine_capacity  FROM vehicle_models WHERE brand = ?1 and model_name=?2 and year_of_manufacture=?3 ", nativeQuery = true)
   ArrayList<String>  findEnginecc(String brand,String model,String year);
           
           
}
