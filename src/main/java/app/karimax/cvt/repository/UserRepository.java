package app.karimax.cvt.repository;

import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    // Since email is unique, we'll find users by email
    Optional<User> findByEmail(String email);


    @Query("select u from User u WHERE u.email =?1")
    User getbyEmailapp(String email);


    @Query("select u from User u WHERE u.phone_number =?1")
    User findByPhone_number(String phone);

////    @Query("select u from Employee u WHERE u.email =?1")
////	List<User> findByEmail(String email);
//	
//	
////	@Query(value = "SELECT id FROM employees WHERE first_name = ?1 ", nativeQuery = true)
////	String findAdultUserByEmail(String firstname);


    @Transactional
    @Modifying
    @Query(value = "update users  set users.otp_code =?1,users.otp_code_expires_at=?2 where users.id = ?3", nativeQuery = true)
    int addphonevercode(String code, Date expires_at, int id);


    @Query("select u from User u WHERE u.id =?1 and u.otp_code=?2")
    User verifycode(int id, String code);

    @Transactional
    @Modifying
    @Query(value = "update users  set otp_verified_at=?1 where users.id = ?2", nativeQuery = true)
    int setupdated(String status, int id);


    @Query("SELECT u FROM User u " +
            "JOIN ForumUsers fu ON u.id = fu.user_id " +
            "WHERE fu.roles_id = :roleId AND fu.forum_id = :forumId")
    List<User> findUsersByRoleIdAndForumId(@Param("roleId") Integer roleId, @Param("forumId") Integer forumId);


    @Query("SELECT u FROM User u WHERE u.userable_type LIKE ?1 and u.userable_id = ?2")
    User getByUserableId(String userabletype, long userableId);


    @Query("SELECT u FROM User u WHERE u.id  = ?1")
    User getCustomerByUserId(Long userId);
    @Query("SELECT u FROM User u WHERE u.id = :userId")
    User findCustomerByUserId(@Param("userId") Long userId);


    @Query("SELECT u FROM User u WHERE u.userable_type like ?1")
    List<User> findMechanics(String userableType);

    @Query("SELECT m FROM Mechanic m WHERE m.id = ?1")
    Mechanic findMechByUserableId(Long  userableiId);


    @Query(value = "SELECT ifnull((count(id)),0) FROM job_card_service m WHERE m.main_mechanic_id = ?1",nativeQuery = true)
    Integer countServices(Long  mechId);



}
