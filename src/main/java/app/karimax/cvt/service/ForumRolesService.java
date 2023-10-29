package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.SaveForumsDto;

public interface ForumRolesService {

    ApiResponseDTO getAll();

    ApiResponseDTO  saveForum(SaveForumsDto saveForumsDto);
}
