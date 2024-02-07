package app.karimax.cvt.repository.Forums;

import app.karimax.cvt.model.Posts;
import app.karimax.cvt.model.ProductCategories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostsRepository extends JpaRepository<Posts,Long> {
    @Query(value="SELECT forum_posts.id as postId"
    		+ " ,forum_posts.content,"
    		+ "ifnull((select count(id) from forum_post_reactions where reaction_for='post' and reaction_type='like'  and forum_post_comment_id=postId),0) as likes,"
    		+ "ifnull((forum_posts.dislikes),0) as dislikes,"
    		+ "ifnull((select count(user_id) from forum_post_reactions where reaction_for='post' and reaction_type='dislike' and user_id=?1 and forum_post_comment_id=postId),0) as dislikeCount,"
    		+ "ifnull((select count(user_id) from forum_post_reactions where reaction_for='post' and reaction_type='like' and user_id=?1 and forum_post_comment_id=postId),0) as likeCount,"
    		+ "ifnull((select count(post_id) from forum_post_comments where post_id=postId),0) as commentCount,"
    		+ "forum_posts.created_at ,"
    		+ "users.email"
    		+ ",users.id as userId,users.profile_photo_path,users.username,users.user_summary FROM forum_posts inner join users on users.id=forum_posts.user_id  where   forum_posts.forum_id=?2 order by forum_posts.created_at DESC", nativeQuery = true)
           List<Object[]> getPosts(Integer userId,Integer forumId);

    @Query(value="SELECT forum_posts.id as postId"
    		+ " ,forum_posts.content,"
    		+ "ifnull((select count(id) from forum_post_reactions where reaction_for='post' and reaction_type='like'  and forum_post_comment_id=postId),0) as likes"
    		+ ",ifnull((forum_posts.dislikes),0) as dislikes"
    		+ ",ifnull((select count(user_id) from forum_post_reactions where reaction_for='post' and reaction_type='dislike' and user_id=?1 and forum_post_comment_id=postId),0) as dislikeCount,"
    		+ "ifnull((select count(user_id) from forum_post_reactions where reaction_for='post' and reaction_type='like' and user_id=?1 and forum_post_comment_id=postId),0) as likeCount," +
			"ifnull((select count(post_id) from forum_post_comments where post_id=postId),0) as commentCount,"
    		+ "forum_posts.created_at "
    		+ ",users.email,"
    		+ "users.id as userId," +
			"users.profile_photo_path," +
			"users.username," +
			"users.user_summary" +
			" FROM forum_posts inner join users on users.id=forum_posts.user_id  where   forum_posts.user_id=?2 order by forum_posts.created_at DESC ", nativeQuery = true)
    List<Object[]> getUserPosts(Integer userId,Integer userId2);



}
