package app.karimax.cvt.repository;


import app.karimax.cvt.dto.CarDetailsPageDto;
import app.karimax.cvt.dto.NextVisitDto;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Quotations;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.sql.Timestamp;
import java.util.List;

public interface QuotationRepository extends JpaRepository<Quotations,Long> {



    @Query(value="SELECT garages.name as garageName,vehicle_details.vehicle_registration_plate as vehicleRegistration,quotations.status,quotations.created_at, quotations.job_card_id,quotations.issue_description,quotations.id FROM quotations inner join garages on garages.id=quotations.garage_id inner join vehicle_details on vehicle_details.vehicle_id=quotations.vehicle_id where quotations.customer_id=?1 order by status desc", nativeQuery = true)
    List<Object[]> getPendingQuotations(Integer UserId);


    @Query("SELECT j.createdAt FROM JobCard j WHERE j.vehicleId = :vehicleId AND j.status = 'Done' ORDER BY j.createdAt DESC LIMIT 1")
    Timestamp findLastCheckUp(@Param("vehicleId") Long vehicleId);


    @Query("SELECT new app.karimax.cvt.dto.NextVisitDto(" +
            "   COALESCE(q.created_at, j.createdAt), " +          // Next visit createdAt
            "   COALESCE(q.status, j.status), " +                  // Next visit status
            "   COALESCE(q.issue_description, j.issueDescription), " + // Next visit issueDescription
            "   COALESCE(g.name, '')" +                            // Garage name from Garages table
            ") " +
            "FROM Quotations q " +
            "LEFT JOIN JobCard j ON q.vehicle_id = j.vehicleId AND q.status = 'Pending' " +
            "LEFT JOIN Garages g ON COALESCE(q.garage_id, j.garageId) = g.id " +
            "WHERE (q.vehicle_id = :vehicleId OR j.vehicleId = :vehicleId) " +
            "AND (q.status = 'Pending' OR j.status IN ('Draft', 'In Progress')) " +
            "ORDER BY COALESCE(q.created_at, j.createdAt) DESC")
    Page<NextVisitDto> findNextVisit(@Param("vehicleId") Long vehicleId, Pageable pageable);



    @Query("SELECT new app.karimax.cvt.model.JobCard(" +
            "   j.id, j.reference, j.customerId, j.vehicleId, j.garageId, " +
            "   j.issueDescription, j.status, j.source, j.createdBy, j.completedAt, " +
            "   j.customerRating, j.customerRemarks, j.createdAt, j.updatedAt, " +
            "   i.amount,g.name) " +
            "FROM JobCard j " +
            "LEFT JOIN Invoices i ON j.id = i.job_card_id " +
            " INNER JOIN Garages g on g.id=j.garageId WHERE j.vehicleId = :vehicleId AND j.status = 'Done' " +
            "ORDER BY j.createdAt DESC")
    List<JobCard> findServiceHistoryWithAmount(@Param("vehicleId") Long vehicleId);

}
