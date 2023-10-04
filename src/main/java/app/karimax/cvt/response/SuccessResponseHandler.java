package app.karimax.cvt.response;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class SuccessResponseHandler {
    private Configs serviceConfig;
    Object object;

    public ApiResponseDTO SuccResponse() {
        ApiResponseDTO apiResponseDTO=new ApiResponseDTO();
        apiResponseDTO.setStat_code(serviceConfig.getSuccessStatusCode());
        apiResponseDTO.setStat_type(serviceConfig.getSuccessStatusType());
        apiResponseDTO.setStat_desc(serviceConfig.getSuccessStatusDesc());
        apiResponseDTO.setResultsList(object);

        return apiResponseDTO;
    }

}
