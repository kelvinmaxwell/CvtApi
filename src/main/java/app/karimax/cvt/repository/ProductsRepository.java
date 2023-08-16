package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

import app.karimax.cvt.model.VehicleDetails;



public interface ProductsRepository extends JpaRepository<VehicleDetails, Long>  {
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,cvt.product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM cvt.products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where product_vehicle_model.vehicle_model_id=?1 ;", nativeQuery = true)
	List<Object[]> getproductsbymodel(Integer id);

}
