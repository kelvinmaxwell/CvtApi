package app.karimax.cvt.repository;

import app.karimax.cvt.model.PreInspectionRequest;
import app.karimax.cvt.model.posOrders;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PreInspectionRepository extends JpaRepository<PreInspectionRequest,Long> {

    @Query( "select m from PreInspectionRequest  m where m.customer_id=?1 and m.status=?2")
    List<PreInspectionRequest> getInspectionByCustomer(Integer userid,String status);

    @Query(value = "SELECT seller_name,seller_phone_number,pre_purchase_inspection_booking_requests.status,pre_purchase_inspection_booking_requests.created_at, garages.name as garage FROM  pre_purchase_inspection_booking_requests inner join garages on garages.id=pre_purchase_inspection_booking_requests.garage_id where customer_id=?1",nativeQuery = true)
    List<Object[]> getInspectionHistory( Integer UserId);

}
