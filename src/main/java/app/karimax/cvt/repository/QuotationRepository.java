package app.karimax.cvt.repository;


import app.karimax.cvt.model.Quotations;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface QuotationRepository extends JpaRepository<Quotations,Long> {



    @Query(value="SELECT garages.name as garageName,vehicle_details.vehicle_registration_plate as vehicleRegistration,quotations.status,quotations.created_at, quotations.job_card_id ,quotations.id FROM quotations inner join garages on garages.id=quotations.garage_id inner join vehicle_details on vehicle_details.vehicle_id=quotations.vehicle_id where quotations.customer_id=?1 order by status desc", nativeQuery = true)
    List<Object[]> getPendingQuotations(Integer UserId);
}
