package app.karimax.cvt.repository;

import app.karimax.cvt.model.Services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ServicesRepository extends JpaRepository<Services, Long> {
    @Query("select u from Services u WHERE u.service_category_id =?1 and u.garage_id=?2")
    List<Services> findAllByService_category_id(Integer id,Integer garadgeId);
    @Query("select u from Services u WHERE u.packageName =?1")
    List<Services>getServicesByCategory(String serviceCategory);


}
