package app.karimax.cvt.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Mechanic;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface MechanicRepository extends JpaRepository<Mechanic, Long> {
	
	@Query("select u from Mechanic u WHERE u.reference =?1")
	Mechanic getbyrefrence(String refrence);

	@Query("SELECT u FROM Mechanic u WHERE (u.specialized_cars LIKE ?2 or u.mechanic_type = ?1) and u.city like ?3")
	List<Mechanic> getMechTypesFiltered(String specialization,String model,String location);


	@Query(value = "SELECT * FROM mechanics  WHERE specialized_cars LIKE ?2 or mechanic_type = ?1 order by SQRT(POWER (JSON_EXTRACT(current_address, '$.latitude')- ?2,2)+ POWER(JSON_EXTRACT(current_address, '$.longitude')-?3,2)) ",nativeQuery = true)
	List<Object[]> getMechTypesFilteredNear(String specialization,String model,String latitude,String longitude);


}
