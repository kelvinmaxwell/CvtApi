package app.karimax.cvt.service;

import app.karimax.cvt.dto.ApiResponseDTO;

public interface MechTypesService {
    ApiResponseDTO getMechTypes();

    ApiResponseDTO getmechtypesfiltered(String speialization,String model);
}
