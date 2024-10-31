package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;

public interface ServicesService {
    ApiResponseDTO getAllServiceByCategory(Integer garadgeId);
    ApiResponseDTO getServiceById(Integer id);


    ApiResponseDTO getServicesByCategory(String serviceCategory);
}
