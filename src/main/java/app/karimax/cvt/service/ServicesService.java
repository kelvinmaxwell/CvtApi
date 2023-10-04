package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;

public interface ServicesService {
    ApiResponseDTO getAllServiceByCategory(Integer Categpry,Integer garadgeId);
    ApiResponseDTO getServiceById(Integer id);
}
