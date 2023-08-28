package app.karimax.cvt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import app.karimax.cvt.model.Pos_order_product;

public interface PosOrderProductRepository extends  JpaRepository<Pos_order_product,Long>  {

List<Pos_order_product> findByPos_order_id(int pos_order_id);
	
	

}