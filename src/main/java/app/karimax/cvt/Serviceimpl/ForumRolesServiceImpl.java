package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.InviteUser;
import app.karimax.cvt.dto.SaveForumsDto;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.ForumInvites;
import app.karimax.cvt.model.ForumRoles;
import app.karimax.cvt.model.Forums;
import app.karimax.cvt.repository.ForumInvitesRepository;
import app.karimax.cvt.repository.ForumsRepository;
import app.karimax.cvt.repository.ForumsRolesRepository;
import app.karimax.cvt.repository.GarageRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.ForumRolesService;
import app.karimax.cvt.service.GaragesService;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ForumRolesServiceImpl  implements ForumRolesService {
    private final ForumsRolesRepository forumsRolesRepository;
    private  final ForumsRepository forumsRepository;
    private  final ForumInvitesRepository forumInvitesRepository;
    private final JdbcTemplate jdbcTemplate;
    private final Configs serviceConfig;
    LocalDate currentDate = LocalDate.now();

    // Convert to java.sql.Date
    Date sqlDate = Date.valueOf(currentDate);

    @Override
    public ApiResponseDTO getAll() {

        List<ForumRoles>  forumRolesList=forumsRolesRepository.findAll();
        return new SuccessResponseHandler(serviceConfig,forumRolesList).SuccResponse();
    }

    @Override
    public ApiResponseDTO saveForum(SaveForumsDto saveForumsDto) {

      List<Forums> forumstest=  forumsRepository.findForumsByName(saveForumsDto.getName());

        if(forumstest.isEmpty()){


        Forums forums = new Forums();
        UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("FOR-", "forums", "reference", 12);
        forums.setReference(uniqueIdGenerator.generateUniqueId(jdbcTemplate));
        forums.setName(saveForumsDto.getName());
        forums.setSummary(saveForumsDto.getSummary());
        forums.setDescription(saveForumsDto.getDescription());
        forums.setCreated_by(saveForumsDto.getCreated_by());
        forums.setCreated_at(sqlDate);
        forums.setIs_private(saveForumsDto.getIsPrivate());
        forums = forumsRepository.save(forums);

        List<ForumInvites> forumInvites = new ArrayList<>();
        for (InviteUser inviteUser : saveForumsDto.getInviteUsers()
        ) {
            ForumInvites forumInvite = new ForumInvites();
            forumInvite.setInvited_by(String.valueOf(saveForumsDto.getCreated_by()));
            forumInvite.setInvite_to(inviteUser.getEmail());
            forumInvite.setInvite_status(0);
            forumInvite.setForum(String.valueOf(forums.getId()));
            forumInvite.setSending_status(0);
            forumInvite.setCreated_at(sqlDate);

            forumInvites.add(forumInvite);


        }

        forumInvites = forumInvitesRepository.saveAll(forumInvites);

        if (forumInvites.isEmpty()) {

return  new ErrorExceptionHandler(serviceConfig,"error").ErrorResponse();
        } else {
            return new SuccessResponseHandler(serviceConfig, forumInvites).SuccResponse();
        }


    }
    else{
            return  new ErrorExceptionHandler(serviceConfig,"Duplicate Forum Name").ErrorResponse();
    }}
}
