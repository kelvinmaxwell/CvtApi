package app.karimax.cvt.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Mechanic;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface MechanicRepository extends JpaRepository<Mechanic, Long> {
	
	@Query("select u from Mechanic u WHERE u.reference =?1")
	Mechanic getbyrefrence(String refrence);

	@Query("SELECT u FROM Mechanic u WHERE u.specialized_cars LIKE ?2 or u.mechanic_type = ?1")
	List<Mechanic> getMechTypesFiltered(String specialization,String model);


}
