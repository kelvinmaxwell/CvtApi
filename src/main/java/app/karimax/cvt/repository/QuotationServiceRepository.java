package app.karimax.cvt.repository;

import app.karimax.cvt.model.QuotationService;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface QuotationServiceRepository extends JpaRepository<QuotationService,Long> {

    @Query(value="SELECT quotations.garage_id,customer_id,services.name FROM quotations inner join quotation_service on quotation_service.quotation_id=quotations.id inner join services on services.id=quotation_service.service_id where quotations.status='pending' and services.service_category_id=?1 and quotations.customer_id=?2  ;", nativeQuery = true)
    List<Object[]> getPendingQuotations(Integer serviceCategory, Integer UserId);
}
