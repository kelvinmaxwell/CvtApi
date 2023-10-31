package app.karimax.cvt.repository;

import app.karimax.cvt.model.ForumRoles;
import app.karimax.cvt.model.Forums;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ForumsRepository    extends JpaRepository<Forums,Long> {

    List<Forums> findForumsByForumName(String name);

    @Query(value="select forums.name as forumName,forums.id,forums.summary,ifnull((select count(*) from forum_users where forum_id=forums.id),0)as followers from forums where forums.id NOT IN (select forum_users.forum_id from forum_users where user_id=?1)", nativeQuery = true)
    List<Object[]> getAllForums(Integer userId);

    @Query("SELECT f FROM Forums f WHERE f.id IN (SELECT fu.forum_id FROM ForumUsers fu WHERE fu.user_id = ?1)")
  List<Forums>   findForumByForumUserId(Long forumUserId);


}
