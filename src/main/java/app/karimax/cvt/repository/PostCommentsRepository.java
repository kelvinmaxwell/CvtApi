package app.karimax.cvt.repository;

import app.karimax.cvt.model.PostComments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostCommentsRepository  extends JpaRepository<PostComments,Long> {

    @Query(value="SELECT post_comments.id as commentId ,post_comments.content,ifnull((post_comments.likes),0),ifnull((post_comments.dislikes),0),ifnull((select count(user_id) from posts_reactions where reaction_type='comment' and dislike_like='dislike' and user_id=?2 and post_comment_id=commentId),0) as dislikeCount,ifnull((select count(user_id) from posts_reactions where reaction_type='comment' and dislike_like='like' and user_id=?2 and post_comment_id=commentId),0) as likeCount,ifnull((select count(comment_id) from post_comments where comment_id=commentId),0) as commentCount,post_comments.created_at,users.email FROM post_comments inner join users on users.id=post_comments.user_id where post_comments.user_id=?2 and post_comments.forum_id=?3 and post_comments.post_id=?1", nativeQuery = true)
    List<Object[]> findPostCommentsByPost_id(Integer postId,Integer userId,Integer forumId);
    @Query(value="SELECT post_comments.id as commentId " +
            ",post_comments.content,ifnull((post_comments.likes),0) as likes," +
            "ifnull((post_comments.dislikes),0) as dislikes ," +
            "ifnull((select count(user_id) from posts_reactions where reaction_type='comment' and dislike_like='dislike' and user_id=?2 and post_comment_id=commentId),0) as dislikeCount," +
            "ifnull((select count(user_id) from posts_reactions where reaction_type='comment' and dislike_like='like' and user_id=?2 and post_comment_id=commentId),0) as likeCount," +
            "ifnull((select count(comment_id) from post_comments where comment_id=commentId),0) as commentCount," +
            "post_comments.created_at," +
            "users.email " +
            "FROM post_comments inner join users on users.id=post_comments.user_id where post_comments.user_id=?2 and post_comments.forum_id=?3 and post_comments.comment_id=?1", nativeQuery = true)

    List<Object[]> findPostCommentsByComment_id(Integer commentId,Integer userId,Integer forumId);


}
