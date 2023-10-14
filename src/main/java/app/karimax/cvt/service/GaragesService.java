package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;

public interface GaragesService {
    ApiResponseDTO getAll();
    ApiResponseDTO getGarageServices(Integer garageId);
}
