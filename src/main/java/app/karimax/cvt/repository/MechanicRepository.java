package app.karimax.cvt.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Mechanic;


public interface MechanicRepository extends JpaRepository<Mechanic, Long> {
	
	@Query("select u from Mechanic u WHERE u.reference =?1")
	Mechanic getbyrefrence(String refrence);
	
	

}
