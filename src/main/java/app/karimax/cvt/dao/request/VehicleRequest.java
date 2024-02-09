package app.karimax.cvt.dao.request;

import app.karimax.cvt.model.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class VehicleRequest {
	
	Integer customer_id;
	String brand;
	String year_of_manufacture;
	String model_name;
	String vehicle_registration_plate;
	Integer engine_capacity;
	String trim;
	

}
