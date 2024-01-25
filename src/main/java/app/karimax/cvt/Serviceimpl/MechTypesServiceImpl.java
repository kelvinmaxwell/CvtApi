package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.service.JwtService;
import app.karimax.cvt.service.MechTypesService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MechTypesServiceImpl implements MechTypesService {
    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getMechTypes() {
        return null;
    }
}
