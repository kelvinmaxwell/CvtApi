package app.karimax.cvt.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    // Since email is unique, we'll find users by email
    Optional<User> findByEmail(String email);
    
   
    
    @Query("select u from User u WHERE u.email =?1")
    User getbyEmailapp(String email);
    
    
    @Query("select u from User u WHERE u.phone_number =?1")
    User findByPhone_number(String phone);
    
//    @Query("select u from Employee u WHERE u.email =?1")
//	List<User> findByEmail(String email);
	
	
	@Query(value = "SELECT id FROM employees WHERE first_name = ?1 ", nativeQuery = true)
	String findAdultUserByEmail(String firstname);
}
