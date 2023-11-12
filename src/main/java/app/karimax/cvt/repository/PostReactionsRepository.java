package app.karimax.cvt.repository;

import app.karimax.cvt.model.PostComments;
import app.karimax.cvt.model.PostReactions;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PostReactionsRepository extends JpaRepository<PostReactions,Long> {

    @Query("SELECT pr FROM PostReactions pr WHERE pr.post_comment_id = ?1 and  pr.reaction_type=?2 and pr.user_id=?3 and pr.dislike_like=?4")
    List<PostReactions> findByPost_comment_idAndAndReaction_typeAndAndUser_idAndDislike_like(Integer postcommentid,String reactionType,Integer userId,String dislikeLike);


    @Modifying
    @Transactional
    @Query("DELETE FROM PostReactions pr WHERE pr.post_comment_id = ?1 and  pr.reaction_type=?2 and pr.user_id=?3 and pr.dislike_like=?4")
    void deletePostReactionsByPost_comment_idAndReaction_typeAndUser_idAndDislike_like(Integer postcommentid,String reactiontype,Integer userid,String dislikelike);
}
