package app.karimax.cvt.repository;

import app.karimax.cvt.model.ForumUsers;
import app.karimax.cvt.model.Forums;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ForumsUsersRepository   extends JpaRepository<ForumUsers,Long> {


    @Query("select  ur from ForumUsers  ur where ur.user_id=?1 and ur.forum_id=?2")
    List<ForumUsers> findByUser_idAndAndForum_id(Integer userId,Integer forumId);

        @Query(value = "SELECT forums.id as fid, forums.name,forums.summary,ifnull((select count(forum_id) from forum_users where forum_id=fid),0) as followers,ifnull((select count(forum_id) from posts where forum_id=fid),0) as posts ,forums.description ,forums.image FROM forums where id=?1",nativeQuery = true)

    List<Object[]> getforumDetails(Integer forumId);

}
