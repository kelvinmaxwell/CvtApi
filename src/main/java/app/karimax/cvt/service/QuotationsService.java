package app.karimax.cvt.service;

import app.karimax.cvt.dao.request.QuotationsPostRequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.QuotationService;

import java.util.List;

public interface QuotationsService {

    ApiResponseDTO saveQuotations(QuotationsPostRequest quotationsPostRequest);

    ApiResponseDTO getActiveQuotation(Integer userId, Integer serviceId);

    ApiResponseDTO getAlluserquotations(Integer userId  );

    ApiResponseDTO getVehicleDescriptionContent(String vehicleRegistration);


}
