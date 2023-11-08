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
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
@Service
@RequiredArgsConstructor
public class ForumsServiceImpl implements ForumsService {

    private final ForumsRepository forumsRepository;
    private final UserRepository userRepository;
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
}
