package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.*;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.*;
import app.karimax.cvt.repository.*;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.ForumsService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Service
@RequiredArgsConstructor
public class ForumsServiceImpl implements ForumsService {

    private final ForumsRepository forumsRepository;
    private final UserRepository userRepository;
    private final PostCommentsRepository postCommentsRepository;
    private final ForumsUsersRepository forumsUsersRepository;
    private final PostsRepository postsRepository;
    private final ModelMapper modelMapper;
    private final JdbcTemplate jdbcTemplate;
    LocalDate currentDate = LocalDate.now();

    // Convert to java.sql.Date
    Date sqlDate = Date.valueOf(currentDate);


    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getAll(Integer customerId) {
        List<Object[]> resultList=forumsRepository.getAllForums(customerId);
        List<ForumsDto> forumsDtos = new ArrayList<>();

        if(!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                ForumsDto dto = new ForumsDto();

                dto.setId((Integer)row[1]);
                dto.setSummary((String) row[2]);
                dto.setForumName((String) row[0]);

                Long t= (long)row[3];
                int g=t.intValue();
                dto.setFolowers(g);
                dto.setVehicle_model((String) row[4]);
                forumsDtos.add(dto);
            }
            return new SuccessResponseHandler(serviceConfig,forumsDtos).SuccResponse();
        }
        else {
            return new SuccessResponseHandler(serviceConfig,forumsDtos).SuccResponse();
        }
    }

    @Override
    public ApiResponseDTO myForums(Integer customerId) {
        List<Forums> forums =forumsRepository.findForumByForumUserId(Long.valueOf(customerId));
        return new SuccessResponseHandler(serviceConfig, forums).SuccResponse();
    }

    @Override
    public ApiResponseDTO followForum(ForumUsersDto forumUsersDto) {

        ForumUsers forumUsers=new ForumUsers();
        forumUsers.setUser_id(forumUsersDto.getUser_id());
        forumUsers.setReceive_forum_notifications(forumUsersDto.getReceive_forum_notifications());
        forumUsers.setRoles_id(forumUsersDto.getRoles_id());
        forumUsers.setForum_id(forumUsersDto.getForum_id());
        forumUsers.setIs_terms_agreed(forumUsersDto.getIs_terms_agreed());
        forumUsers.setCreated_at(sqlDate);

      forumUsers= forumsUsersRepository.save(forumUsers);

        if (forumUsers==null) {

            return  new ErrorExceptionHandler(serviceConfig,"error").ErrorResponse();
        } else {
            return new SuccessResponseHandler(serviceConfig, forumUsers).SuccResponse();
        }

    }

    @Override
    public ApiResponseDTO getAllForumModels() {
        List<Object[]> resultList=forumsRepository.getAllForumModels();
        List<MakeModelDto> makeModelDtoArrayList = new ArrayList<>();

        if(!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                MakeModelDto dto = new MakeModelDto();

                dto.setVehicle_model((String)row[0]);
                dto.setBrand((String) row[1]);


                makeModelDtoArrayList.add(dto);
            }
            return new SuccessResponseHandler(serviceConfig,makeModelDtoArrayList).SuccResponse();
        }
        else {
            return new SuccessResponseHandler(serviceConfig,makeModelDtoArrayList).SuccResponse();
        }
    }

    @Override
    public ApiResponseDTO discoverbymodel(String model,Integer userId) {
        List<Object[]> resultList=forumsRepository.discoverbymodel(model,userId);
        List<ForumsDto> forumsDtos = new ArrayList<>();

        if(!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                ForumsDto dto = new ForumsDto();

                dto.setId((Integer)row[1]);
                dto.setSummary((String) row[2]);
                dto.setForumName((String) row[0]);

                Long t= (long)row[3];
                int g=t.intValue();
                dto.setFolowers(g);

                dto.setVehicle_model((String) row[4]);

                forumsDtos.add(dto);
            }
            return new SuccessResponseHandler(serviceConfig,forumsDtos).SuccResponse();
        }
        else {
            return new SuccessResponseHandler(serviceConfig,forumsDtos).SuccResponse();
        }
    }

    @Override
    public ApiResponseDTO getforumUsersbyRole(Integer roleId, Integer forumId) {

       List<User> users= userRepository.findUsersByRoleIdAndForumId(roleId,forumId);
        return new SuccessResponseHandler(serviceConfig,users).SuccResponse();
    }

    @Override
    public ApiResponseDTO savePosts(PostDto postDto) {

        UniqueIdGenerator uniqueIdGenerator=new UniqueIdGenerator("POS-","posts","reference",12);
        Posts posts=new Posts();
        posts.setReference(uniqueIdGenerator.generateUniqueId(jdbcTemplate));
        posts.setUser_id(postDto.getUserId());
        posts.setForum_id(posts.getForum_id());
        posts.setContent(postDto.getReplacedHtml());

        posts.setCreated_at(sqlDate);
       posts= postsRepository.save(posts);


        return new SuccessResponseHandler(serviceConfig,posts).SuccResponse();
    }

    @Override
    public ApiResponseDTO getPosts(Integer userId, Integer forumId) throws ParseException {
        List<Object[]> resultList=postsRepository.getPosts(userId,forumId);
        List<GetPostDto> posts = new ArrayList<>();

        if(!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                GetPostDto dto = new GetPostDto();

                dto.setId((Integer)row[0]);
                dto.setContent((String) row[1]);
              dto.setLikes((Integer) row[2]);

                Long t= (long)row[5];
                int g=t.intValue();
           dto.setLiked(g);

                Long s= (long)row[4];
                int u=s.intValue();
             dto.setDislike(u);

                long v= (long)row[6];
                int x= (int) v;
                    dto.setCommentsNumber(x);
                Timestamp timestamp = ((java.sql.Timestamp) row[7]);

                // Convert Timestamp to Date
                Date sqlDate = new Date(timestamp.getTime());
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String formattedDateString = dateFormat.format(sqlDate);
                Date formattedDate = new Date(dateFormat.parse(formattedDateString).getTime());



                dto.setCreated_at(formattedDateString);
              dto.setUsername((String) row[8]);


                posts.add(dto);
            }
            return new SuccessResponseHandler(serviceConfig,posts).SuccResponse();
        }
        else {
            return new SuccessResponseHandler(serviceConfig,posts).SuccResponse();
        }
    }



    @Override
    public  ApiResponseDTO fetchCommentsAndReplies(Integer postId,Integer userId,Integer forumId) {

        List<Object[]>  resultList=postCommentsRepository.findPostCommentsByPost_id(postId,userId,forumId);


            List<PostMainComment> postMainComments=new ArrayList<>();


            if(!resultList.isEmpty()) {

                for (Object[] row : resultList) {
                    PostMainComment dto = new PostMainComment();

                    dto.setId((Integer)row[0]);
                    dto.setContent((String) row[1]);
                    dto.setLikes((Integer) row[2]);



                    Long t= (long)row[5];
                    int g=t.intValue();
                    dto.setLikeCount(g);



                    long v= (long)row[6];
                    int x= (int) v;
                    dto.setCommentsNumber(x);
                    Timestamp timestamp = ((java.sql.Timestamp) row[7]);

                    // Convert Timestamp to Date
                    Date sqlDate = new Date(timestamp.getTime());
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String formattedDateString = dateFormat.format(sqlDate);




                    dto.setCreated_at(formattedDateString);
                    dto.setUsername((String) row[8]);
                    dto.setComments(fetchRepliesForComment((Integer)row[0],userId,forumId));


                    postMainComments.add(dto);
                }
                return new SuccessResponseHandler(serviceConfig,postMainComments).SuccResponse();
            }
            else {
                return new SuccessResponseHandler(serviceConfig,postMainComments).SuccResponse();
            }







    }

    private List<Comment>  fetchRepliesForComment(Integer commentId,Integer userId,Integer forumId) {

        List<Object[]>  resultList=postCommentsRepository.findPostCommentsByComment_id(commentId,userId,forumId);


            List<Comment> comments=new ArrayList<>();


            if(!resultList.isEmpty()) {

                for (Object[] row : resultList) {
                    Comment dto = new Comment();

                    dto.setId((Integer)row[0]);
                    dto.setContent((String) row[1]);
                    dto.setLikes((Integer) row[2]);



                    Long t= (long)row[5];
                    int g=t.intValue();
                    dto.setLikeCount(g);



                    long v= (long)row[6];
                    int x= (int) v;
                    dto.setCommentsNumber(x);
                    Timestamp timestamp = ((java.sql.Timestamp) row[7]);

                    // Convert Timestamp to Date
                    Date sqlDate = new Date(timestamp.getTime());
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String formattedDateString = dateFormat.format(sqlDate);




                    dto.setCreated_at(formattedDateString);
                    dto.setUsername((String) row[8]);
                    dto.setReplies(fetchRepliesForReply((Integer)row[0],userId,forumId));


                    comments.add(dto);
                }
                return comments;
            }
            else {
                return comments;
            }





    }

    private List<Comment> fetchRepliesForReply(Integer commentId,Integer userId,Integer forumId) {
        List<Object[]>  resultList=postCommentsRepository.findPostCommentsByComment_id(commentId,userId,forumId);


        List<Comment> comments=new ArrayList<>();


        if(!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                Comment dto = new Comment();

                dto.setId((Integer)row[0]);
                dto.setContent((String) row[1]);
                dto.setLikes((Integer) row[2]);



                Long t= (long)row[5];
                int g=t.intValue();
                dto.setLikeCount(g);



                long v= (long)row[6];
                int x= (int) v;
                dto.setCommentsNumber(x);
                Timestamp timestamp = ((java.sql.Timestamp) row[7]);

                // Convert Timestamp to Date
                Date sqlDate = new Date(timestamp.getTime());
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String formattedDateString = dateFormat.format(sqlDate);




                dto.setCreated_at(formattedDateString);
                dto.setUsername((String) row[8]);
                dto.setReplies(fetchRepliesForComment((Integer)row[0],userId,forumId));


                comments.add(dto);
            }
            return comments;
        }
        else {
            return comments;
        }



    }


}
