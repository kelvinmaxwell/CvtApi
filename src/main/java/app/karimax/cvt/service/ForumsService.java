package app.karimax.cvt.service;

import app.karimax.cvt.dto.*;
import app.karimax.cvt.model.ForumReport;
import app.karimax.cvt.model.ForumUsers;
import app.karimax.cvt.model.PostComments;
import app.karimax.cvt.model.User;

import java.text.ParseException;

public interface ForumsService {
    ApiResponseDTO getAll(Integer customerId);

    ApiResponseDTO myForums(Integer customerId);

    ApiResponseDTO followForum(ForumUsersDto forumUsersDto);
    ApiResponseDTO  unfollowForum(Integer userId, Integer forumId);
    ApiResponseDTO getAllForumModels();

    ApiResponseDTO discoverbymodel(String model,Integer userId);

    ApiResponseDTO getforumUsersbyRole(Integer  roleId,Integer forumId);

    ApiResponseDTO savePosts(PostDto postDto);

    ApiResponseDTO getPosts(Integer userId,Integer forumId) throws ParseException;
    ApiResponseDTO  getUserPosts(Integer userId,Integer userId2);
    ApiResponseDTO  fetchCommentsAndReplies(Integer postId,Integer userId,Integer forumId);
    ApiResponseDTO saveComment(PostComments postComments);

    ApiResponseDTO handlelikesPosts(Integer postId,Integer customerId,String action,String reactionType,String dislikelike );


    ApiResponseDTO saveReports(ForumReport forumReport);


    ApiResponseDTO getUserSubscription(Integer  userId,Integer forumId);

    ApiResponseDTO getforumDetails(Integer forumId);

    ApiResponseDTO getForumUserRoles(Integer  userId,Integer forumId);

    ApiResponseDTO updateForumInfo(UpdateForumDto updateForumDto);


    ApiResponseDTO getForumById(Integer forumId);

    ApiResponseDTO updateUserProfile(User user, Integer userId,String userName);

    ApiResponseDTO  getMechDetails(Integer userId);

}
