package app.karimax.cvt.repository.Forums;

import app.karimax.cvt.model.ForumRoles;
import app.karimax.cvt.model.Forums;
import app.karimax.cvt.model.Mechanic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ForumsRepository    extends JpaRepository<Forums,Long> {

    List<Forums> findForumsByForumName(String name);

    @Query(value="select forums.name as forumName,forums.id,forums.summary,ifnull((select count(*) from forum_users where forum_id=forums.id),0)as followers,forums.vehicle_model,forums.forum_profile_images from forums where forums.is_private=0 and forums.id NOT IN (select forum_users.forum_id from forum_users where user_id=?1)", nativeQuery = true)
    List<Object[]> getAllForums(Integer userId);

    @Query("SELECT f FROM Forums f WHERE f.id IN (SELECT fu.forum_id FROM ForumUsers fu WHERE fu.user_id = ?1)")
  List<Forums>   findForumByForumUserId(Long forumUserId);



    @Query(value = "SELECT\n" +
            "    forums.vehicle_model COLLATE utf8mb4_unicode_ci AS vehicle_model,\n" +
            "    MAX(vehicle_models.brand COLLATE utf8mb4_unicode_ci) AS brand\n" +
            "FROM\n" +
            "    forums\n" +
            "INNER JOIN\n" +
            "    vehicle_models ON  \n" +
            "    vehicle_models.model_name COLLATE utf8mb4_unicode_ci = forums.vehicle_model COLLATE utf8mb4_unicode_ci\n" +
            "WHERE\n" +
            "    forums.is_private = 0\n" +
            "GROUP BY\n" +
            "    forums.vehicle_model;",nativeQuery = true)
    List<Object[]> getAllForumModels();


    @Query(value="select forums.name as forumName,forums.id,forums.summary,ifnull((select count(*) from forum_users where forum_id=forums.id),0)as followers,forums.vehicle_model ,forums.forum_profile_images from forums where  forums.id NOT IN (select forum_users.forum_id from forum_users where  forum_users.user_id=?2) and  forums.vehicle_model=?1 and is_private=0", nativeQuery = true)
    List<Object[]> discoverbymodel(String model,Integer userId);

    @Query("SELECT m FROM Mechanic m INNER  JOIN User u ON u.userable_id = m.id where u.userable_type LIKE ?2  and u.id=?1 ")
   Mechanic findMechanicsWithUsers(Integer userId,String like);



}
