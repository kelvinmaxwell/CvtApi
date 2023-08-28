package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.Garage_product;
import app.karimax.cvt.model.JobCard;

public interface Garage_productRepository extends JpaRepository<Garage_product,Long> {
	
	Garage_product findByGradgeProduct(Integer garadgeid,Integer productId);

}
