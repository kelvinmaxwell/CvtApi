package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.InviteUser;
import app.karimax.cvt.dto.SaveForumsDto;


import java.util.List;

public interface ForumRolesService {

    ApiResponseDTO getAll();

    ApiResponseDTO  saveForum(SaveForumsDto saveForumsDto);

    ApiResponseDTO  inviteUsers(List<InviteUser> inviteUserList);


}
