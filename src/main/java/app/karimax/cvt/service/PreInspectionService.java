package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.PreInspectionRequestDao;

public interface PreInspectionService {

    ApiResponseDTO getActiveInspection(Integer userid);

    ApiResponseDTO saveInspectionRequest(PreInspectionRequestDao preInspectionRequestDao);
    ApiResponseDTO getuserinspection(Integer userid);
}
