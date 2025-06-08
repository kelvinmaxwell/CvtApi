package app.karimax.cvt.repository;

import app.karimax.cvt.model.PrePurchaseInspectionForms;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Set;

public interface PrePurchaseInspectionFormRepository extends JpaRepository<PrePurchaseInspectionForms, Long> {
    @Query("select ppf from PrePurchaseInspectionForms ppf WHERE ppf.aPackage =:selectedPackage")
    Set<PrePurchaseInspectionForms> getPrePurchaseInspectionFormsByPackage(@Param("selectedPackage") String selectedPackage);

}
