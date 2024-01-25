package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.MechTypes;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.JwtService;
import app.karimax.cvt.service.MechTypesService;
import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MechTypesServiceImpl implements MechTypesService {
    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getMechTypes() {

        String jsonString= "[\n    {\n        \"issueid\": 1,\n        \"issue\": \"Tyres, suspension and brakes Mechanics\"\n    },\n    {\n        \"issueid\": 2,\n        \"issue\": \"Petrol engine Mechanic\"\n    },\n    {\n        \"issueid\": 3,\n        \"issue\": \"Diesel engine Mechanic\"\n    },\n    {\n        \"issueid\": 4,\n        \"issue\": \"Automatic transmission mech\"\n    },\n    {\n        \"issueid\": 5,\n        \"issue\": \"Cvt Mechanics\"\n    },\n    {\n        \"issueid\": 6,\n        \"issue\": \"Auto body Mechanics\"\n    },\n    {\n        \"issueid\": 7,\n        \"issue\": \"Auto glass Mechanic\"\n    },\n    {\n        \"issueid\": 8,\n        \"issue\": \"Service Mechanics\"\n    },\n    {\n        \"issueid\": 9,\n        \"issue\": \"General automotive mechanic\"\n    },\n    {\n        \"issueid\": 10,\n        \"issue\": \"Wiring and lights Mechanics\"\n    }\n]";

        Gson gson = new Gson();
        MechTypes[] arrayOfObjects = gson.fromJson(jsonString, MechTypes[].class);


        return new SuccessResponseHandler(serviceConfig,arrayOfObjects).SuccResponse();

    }
}
