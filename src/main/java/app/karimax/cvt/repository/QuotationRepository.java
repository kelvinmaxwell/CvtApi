package app.karimax.cvt.repository;


import app.karimax.cvt.dto.CarDetailsPageDto;
import app.karimax.cvt.dto.NextVisitDto;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Quotations;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface QuotationRepository extends JpaRepository<Quotations,Long> {



    @Query(value="SELECT garages.name as garageName,vehicle_details.vehicle_registration_plate as vehicleRegistration,quotations.status,quotations.created_at, quotations.job_card_id,quotations.issue_description,quotations.id FROM quotations inner join garages on garages.id=quotations.garage_id inner join vehicle_details on vehicle_details.vehicle_id=quotations.vehicle_id where quotations.customer_id=?1 order by status desc", nativeQuery = true)
    List<Object[]> getPendingQuotations(Integer UserId);


    @Query("SELECT j.created_at FROM JobCard j WHERE j.vehicle_id = :vehicleId AND j.status = 'Done' ORDER BY j.created_at DESC LIMIT 1")
    String findLastCheckUp(@Param("vehicleId") Long vehicleId);


    @Query("SELECT new app.karimax.cvt.dto.NextVisitDto(" +
            "   COALESCE(q.created_at, j.created_at), " +  // Next visit createdAt
            "   COALESCE(q.status, j.status), " +  // Next visit status
            "   COALESCE(q.issue_description, j.issue_description), " +  // Next visit issueDescription
            "   COALESCE(q.garage_id, j.garage_id) " +  // Next visit garageId
            ") " +
            "FROM Quotations q " +
            "LEFT JOIN JobCard j ON q.vehicle_id = j.vehicle_id " +
            "WHERE q.vehicle_id = :vehicleId " +
            "AND (q.status = 'Pending' OR j.status IN ('Draft', 'In Progress')) " +
            "ORDER BY q.created_at DESC, j.created_at DESC")
    NextVisitDto findNextVisit(@Param("vehicleId") Long vehicleId, Pageable pageable);


    @Query("SELECT j FROM JobCard j WHERE j.vehicle_id = :vehicleId AND j.status = 'Done' ORDER BY j.created_at DESC")
    List<JobCard> findServiceHistory(@Param("vehicleId") Long vehicleId);

}
