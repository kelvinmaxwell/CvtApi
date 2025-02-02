package app.karimax.cvt.repository;

import app.karimax.cvt.model.Garage;
import app.karimax.cvt.model.Manager;
import app.karimax.cvt.model.Services;
import app.karimax.cvt.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GarageRepository  extends JpaRepository<Garage,Long> {



    @Query(value="SELECT services.name,services.id as serviceId,services.price as serviceAmount,service_categories.description ,service_categories.name as  serviceCategory   FROM services inner join service_categories on service_categories.id=services.service_category_id where services.garage_id=?1 ;", nativeQuery = true)
    List<Object[]> getgarageServices(Integer garageId);

    @Query(value="SELECT DISTINCT services.garage_id as id, garages.name,garages.country,garages.city ,garages.garage_location  FROM services inner join garages on garages.id=services.garage_id inner join service_categories on service_categories.id=services.service_category_id where service_categories.name=?1 ;", nativeQuery = true)
    List<Object[]> getgarageByService(String  category);

    @Query("SELECT g FROM Garage g WHERE g.id = :garageId")
    Garage findGarageById(Long garageId);


    @Query("SELECT g FROM Garage g")
    List<Garage> findAllGarages();

    @Query("SELECT m FROM Manager m WHERE  m.garageId = :garageId")
    Manager findGarageManager(Long garageId);

    @Query("SELECT u FROM User u WHERE u.userable_type like ?2 AND u.userable_id = ?1")
    List<User> findGarageMechanics(Long garageId,String userableType);

    @Query("SELECT s FROM Services s WHERE s.garage.id = :garageId")
    List<Services> findGarageServices(Long garageId);

    }
