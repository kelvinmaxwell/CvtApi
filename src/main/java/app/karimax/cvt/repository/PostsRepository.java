package app.karimax.cvt.repository;

import app.karimax.cvt.model.Posts;
import app.karimax.cvt.model.ProductCategories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostsRepository extends JpaRepository<Posts,Long> {
    @Query(value="SELECT posts.id as postId ,posts.content,ifnull((posts.likes),0) as likes,ifnull((posts.dislikes),0) as dislikes,ifnull((select count(user_id) from posts_reactions where reaction_type='post' and dislike_like='dislike' and user_id=?1 and post_comment_id=postId),0) as dislikeCount,ifnull((select count(user_id) from posts_reactions where reaction_type='post' and dislike_like='like' and user_id=?1 and post_comment_id=postId),0) as likeCount,ifnull((select count(comment_id) from post_comments where post_id=postId),0) as commentCount,posts.created_at ,users.email FROM posts inner join users on users.id=posts.user_id  where posts.user_id=?1 and posts.forum_id=?2", nativeQuery = true)
           List<Object[]> getPosts(Integer userId,Integer forumId);

}
