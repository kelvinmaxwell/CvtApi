package app.karimax.cvt.repository;

import app.karimax.cvt.model.Garages;
import app.karimax.cvt.model.JobCard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GarageRepository  extends JpaRepository<Garages,Long> {



    @Query(value="SELECT services.name,services.id as serviceId,services.price as serviceAmount,service_categories.description ,service_categories.name as  serviceCategory   FROM cvt.services inner join service_categories on service_categories.id=services.service_category_id where services.garage_id=?1 ;", nativeQuery = true)
    List<Object[]> getgarageServices(Integer garageId);

    @Query(value="SELECT DISTINCT services.garage_id as id, garages.name,garages.country,garages.city ,garages.garage_location  FROM cvt.services inner join garages on garages.id=services.garage_id inner join service_categories on service_categories.id=services.service_category_id where service_categories.name=?1 ;", nativeQuery = true)
    List<Object[]> getgarageByService(String  category);
    }
