package app.karimax.cvt.model;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "vehicle_models")

public class VehicleModelsDao {

	@Id
	private Integer id;

	String reference;
	String exterior_images;
	String interior_images;
	String video_file_path;
	String automobile_category;
	String brand;
	String year_of_manufacture;
	String model_name;
	Integer engine_capacity;
	String trim;
	String body_type;
	String engine_variations;
	String model_country;
	String has_super_charger;
	String has_turbo;
	Integer no_of_cylinders;
	Integer fuel_tank_capacity;
	Integer gross_weight;
	String max_power;
	String max_torque;
	Integer range;
	Integer charge_time;
	Integer no_of_electric_motors;
	Integer battery_capacity;
	String charge_pace;
	String safety_features;
	Integer city_consumption;
	Integer tyre_size;
	Integer highway_consumption;
	Integer average_consumption;
	Date created_at;

	
}
