package app.karimax.cvt.repository;


import app.karimax.cvt.model.Quotations;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuotationRepository extends JpaRepository<Quotations,Long> {
}
