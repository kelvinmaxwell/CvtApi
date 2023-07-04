package app.karimax.cvt.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.Employee;




public interface EmployeeRepository extends JpaRepository<Employee,Long> {
	
	@Query("select u from Employee u WHERE u.email =?1")
	List<Employee> findByEmail(String email);
	
	
	@Query(value = "SELECT id FROM employees WHERE first_name = ?1 ", nativeQuery = true)
	String findAdultUserByEmail(String firstname);
	
	
}
