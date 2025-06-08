package app.karimax.cvt.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "vehicle_details")
public class VehicleDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private Integer id;
	Long vehicle_id;
	String exterior_images;
	String interior_images;
	String video_file_path;
	String automobile_category;
	String body_type;
	String vehicle_registration_plate;
	String color;
	String fuel_type;
	String gearbox;
	Integer seat_capacity;
	String drive_train;
	Integer engine_capacity;
	String engine_variations;
	Integer has_super_charger;
	Integer has_turbo;
	Integer odometer_reading;
	String odometer_status;
	Integer no_of_gears;
	Integer no_of_cylinders;
	Integer fuel_tank_capacity;
	Integer gross_weight;
	String max_power;
	String max_torque;
	
	Integer charge_time;
	Integer no_of_electric_motors;
	Integer battery_capacity;
	String charge_pace;
	String chassis_number;
	String engine_number;
	String	gear_box_number;
	String vin_no;
	String color_code;
	String  primary_condition;
	String state_conditions;
	String safety_features;
	String added_features;
	Integer city_consumption;
	Integer tyre_size;
	Integer highway_consumption;
	Integer average_consumption;
	String qr_code_file_path;
	String	valuation_reports_file_path;
	String car_inspection_report_file_path;
	String insurance_firm;
	String insurance_agent;
	String agent_contact;
	String	insurance_country;
	Double valuation_price;
	Date insurance_start_date;
	Date insurance_end_date;
	Date created_at;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
