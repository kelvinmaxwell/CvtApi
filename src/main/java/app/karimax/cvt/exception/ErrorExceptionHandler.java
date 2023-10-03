package app.karimax.cvt.exception;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import lombok.AllArgsConstructor;

import java.util.List;

@AllArgsConstructor
public class ErrorExceptionHandler {

    private Configs serviceConfig;
    String errormessageString;

    public ApiResponseDTO ErrorResponse() {
        ApiResponseDTO apiResponseDTO=new ApiResponseDTO();
        apiResponseDTO.setStat_code(serviceConfig.getFailureStatusCode());
        apiResponseDTO.setStat_type(serviceConfig.getFailureStatusType());
        apiResponseDTO.setStat_desc(errormessageString);


        return apiResponseDTO;
    }

    public ApiResponseDTO ErrorResponseObject(List<String> errstrings) {
        ApiResponseDTO apiResponseDTO=new ApiResponseDTO();
        apiResponseDTO.setStat_code(serviceConfig.getFailureStatusCode());
        apiResponseDTO.setStat_type(serviceConfig.getFailureStatusType());
        apiResponseDTO.setStat_desc(errormessageString);
        apiResponseDTO.setResultsList(errstrings);
        return apiResponseDTO;
    }
}
