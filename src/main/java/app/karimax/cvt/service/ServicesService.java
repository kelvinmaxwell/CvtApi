package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;

public interface ServicesService {
    ApiResponseDTO getAllServiceByCategory(Integer garadgeId);
    ApiResponseDTO getInspectionByPackage(String  aPackage);
    ApiResponseDTO getServiceCategories(String  grouping);
    ApiResponseDTO getServiceByCategory(String  category);

}
