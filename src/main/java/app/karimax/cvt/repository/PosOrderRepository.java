package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.model.posOrders;
import java.util.List;


public interface PosOrderRepository extends JpaRepository<posOrders,Long> {
	
	
	List<posOrders> findById(long id);

}
