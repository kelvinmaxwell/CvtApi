package app.karimax.cvt.repository;

import app.karimax.cvt.model.ServiceCategory;
import app.karimax.cvt.model.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ServicesRepository extends JpaRepository<Services, Long> {
    @Query("select u from Services u WHERE  u.garage.id=?1")
    List<Services> findAllByGarageId(Integer garadgeId);

    @Query("select sc from ServiceCategory sc WHERE sc.grouping =?1")
    List<ServiceCategory>geCategoryByGrouping(String grouping);
    @Query("select s from Services s WHERE s.serviceCategory.name =?1")
    List<Services>getServicesByCategory(String category);




}
