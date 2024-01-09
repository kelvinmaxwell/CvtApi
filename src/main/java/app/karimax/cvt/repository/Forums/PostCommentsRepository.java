package app.karimax.cvt.repository.Forums;

import app.karimax.cvt.model.PostComments;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostCommentsRepository  extends JpaRepository<PostComments,Long> {

    @Query(value="SELECT forum_post_comments.id as commentId ,forum_post_comments.content,ifnull((select count(id) from forum_post_reactions where reaction_for='comment' and reaction_type='like'  and forum_post_comment_id=commentId),0),ifnull((forum_post_comments.dislikes),0),ifnull((select count(user_id) from forum_post_reactions where reaction_for='comment' and reaction_type='dislike' and user_id=?2 and forum_post_comment_id=commentId),0) as dislikeCount,ifnull((select count(user_id) from forum_post_reactions where reaction_for='comment' and reaction_type='like' and user_id=?2 and forum_post_comment_id=commentId),0) as likeCount,ifnull((select count(comment_id) from forum_post_comments where comment_id=commentId),0) as commentCount,forum_post_comments.created_at,users.email,users.id as userId,users.profile_photo_path,users.username,users.user_summary FROM forum_post_comments inner join users on users.id=forum_post_comments.user_id where  forum_post_comments.forum_id=?3 and forum_post_comments.post_id=?1", nativeQuery = true)
    List<Object[]> findPostCommentsByPost_id(Integer postId,Integer userId,Integer forumId);
    @Query(value="SELECT forum_post_comments.id as commentId " +
            ",forum_post_comments.content,"
            + "ifnull((select count(id) from forum_post_reactions where reaction_for='comment' and reaction_type='like'  and forum_post_comment_id=commentId),0) as likes," +
            "ifnull((forum_post_comments.dislikes),0) as dislikes ," +
            "ifnull((select count(user_id) from forum_post_reactions where reaction_for='comment' and reaction_type='dislike' and user_id=?2 and forum_post_comment_id=commentId),0) as dislikeCount," +
            "ifnull((select count(user_id) from forum_post_reactions where reaction_for='comment' and reaction_type='like' and user_id=?2 and forum_post_comment_id=commentId),0) as likeCount," +
            "ifnull((select count(comment_id) from forum_post_comments where comment_id=commentId),0) as commentCount," +
            "forum_post_comments.created_at," +
            "users.email,users.id as userId,users.profile_photo_path,users.username,users.user_summary " +
            "FROM forum_post_comments inner join users on users.id=forum_post_comments.user_id where  forum_post_comments.forum_id=?3 and forum_post_comments.comment_id=?1", nativeQuery = true)

    List<Object[]> findPostCommentsByComment_id(Integer commentId,Integer userId,Integer forumId);


}
