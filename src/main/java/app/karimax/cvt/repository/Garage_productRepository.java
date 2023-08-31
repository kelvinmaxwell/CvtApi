package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Garage_product;
import app.karimax.cvt.model.JobCard;

public interface Garage_productRepository extends JpaRepository<Garage_product,Long> {
	@Query("select u from Garage_product u WHERE u.garage_id =?1 and u.product_id=?2")
	Garage_product findByGradgeProduct(Integer garadgeid,Integer productId);

}
