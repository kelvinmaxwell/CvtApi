package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.ForumUsersDto;
import app.karimax.cvt.dto.ForumsDto;
import app.karimax.cvt.dto.PostDto;
import app.karimax.cvt.model.ForumUsers;

import java.text.ParseException;

public interface ForumsService {
    ApiResponseDTO getAll(Integer customerId);

    ApiResponseDTO myForums(Integer customerId);

    ApiResponseDTO followForum(ForumUsersDto forumUsersDto);

    ApiResponseDTO getAllForumModels();

    ApiResponseDTO discoverbymodel(String model,Integer userId);

    ApiResponseDTO getforumUsersbyRole(Integer  roleId,Integer forumId);

    ApiResponseDTO savePosts(PostDto postDto);

    ApiResponseDTO getPosts(Integer userId,Integer forumId) throws ParseException;

    ApiResponseDTO  fetchCommentsAndReplies(Integer postId,Integer userId,Integer forumId);

}
