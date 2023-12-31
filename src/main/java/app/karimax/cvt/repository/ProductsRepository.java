package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

import app.karimax.cvt.model.VehicleDetails;



public interface ProductsRepository extends JpaRepository<VehicleDetails, Long>  {
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where product_vehicle_model.vehicle_model_id=?1 ;", nativeQuery = true)
	List<Object[]> getproductsbymodel(Integer id);
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where product_vehicle_model.vehicle_model_id=?1 and products.sub_category_id=?2 ;", nativeQuery = true)
	List<Object[]> getbysubcatmodel(long modelid,long subcatid);
	
	
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where products.oem_no=?1 ;", nativeQuery = true)	
	List<Object[]> getbyoem(String oem);
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where products.chassis_no=?1 ;", nativeQuery = true)	
	List<Object[]> getbychasisno(String chasisno);
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where products.id=?1 ;", nativeQuery = true)
	List<Object[]> getbyid(long id);
	
	
	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where product_vehicle_model.vehicle_model_id=?1 and products.part_name=?2  ;", nativeQuery = true)
	List<Object[]> getproductbymanufacturer(long vmodelid,String name);



	@Query(value ="WITH RankedResults AS (\n" +
			"    SELECT product_vehicle_model.vehicle_model_id,\n" +
			"        vehicle_models.brand,\n" +
			"        vehicle_models.model_name,\n" +
			"        vehicle_models.engine_capacity,\n" +
			"        vehicle_models.year_of_manufacture,\n" +
			"        product_manufacturers.name AS manufacturer,\n" +
			"        products.selling_price,\n" +
			"        products.part_name,\n" +
			"        product_vehicle_model.product_id,\n" +
			"        products.chassis_no,\n" +
			"        products.oem_no,\n" +
			"        ROW_NUMBER() OVER (PARTITION BY products.part_name ORDER BY products.id) AS rn\n" +
			"    FROM\n" +
			"        products\n" +
			"    INNER JOIN\n" +
			"        product_vehicle_model ON products.id = product_vehicle_model.product_id\n" +
			"    INNER JOIN\n" +
			"        product_manufacturers ON product_manufacturers.id = products.product_manufacturer_id\n" +
			"    INNER JOIN\n" +
			"        vehicle_models ON vehicle_models.id = product_vehicle_model.vehicle_model_id where products.sub_category_id=?1\n" +
			")\n" +
			"SELECT\n" +
			"   \n" +
			"    vehicle_model_id,\n" +
			"    brand,\n" +
			"    model_name,\n" +
			"    engine_capacity,\n" +
			"    year_of_manufacture,\n" +
			"    manufacturer,\n" +

			"    selling_price,\n" +
			"part_name,\n" +
			"    product_id,\n" +
			"    chassis_no,\n" +
			"    oem_no\n" +
			"FROM\n" +
			"    RankedResults\n" +
			"WHERE\n" +
			"    rn = 1;",nativeQuery = true)
	List<Object[]> returnProductssubcategoriesproduct(Integer subCategoryId);

	@Query(value="SELECT product_vehicle_model.vehicle_model_id,vehicle_models.brand,vehicle_models.model_name,"
			+ "vehicle_models.engine_capacity,vehicle_models.year_of_manufacture,product_manufacturers.name as "
			+ "manufacturer,products.selling_price,products.part_name,product_vehicle_model.product_id,"
			+ "products.chassis_no,products.oem_no FROM products inner join product_vehicle_model on products.id=product_vehicle_model.product_id inner"
			+ " join product_manufacturers on product_manufacturers.id=products.product_manufacturer_id inner join vehicle_models on"
			+ " vehicle_models.id=product_vehicle_model.vehicle_model_id where products.part_name=?1 ;", nativeQuery = true)
	List<Object[]> getbyproductName(String name);

}
