package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.Comment;
import app.karimax.cvt.dto.MechTypes;
import app.karimax.cvt.dto.MechanicsDto;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.JwtService;
import app.karimax.cvt.service.MechTypesService;
import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import org.apache.juli.logging.Log;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Service
@RequiredArgsConstructor
public class MechTypesServiceImpl implements MechTypesService {
    private final Configs serviceConfig;
    private  final MechanicRepository mechanicRepository;
    @Override
    public ApiResponseDTO getMechTypes() {

        String jsonString= "[\n    {\n        \"issueid\": 1,\n        \"issue\": \"Tyres, suspension and brakes Mechanics\"\n    },\n    {\n        \"issueid\": 2,\n        \"issue\": \"Petrol engine Mechanic\"\n    },\n    {\n        \"issueid\": 3,\n        \"issue\": \"Diesel engine Mechanic\"\n    },\n    {\n        \"issueid\": 4,\n        \"issue\": \"Automatic transmission mech\"\n    },\n    {\n        \"issueid\": 5,\n        \"issue\": \"Cvt Mechanics\"\n    },\n    {\n        \"issueid\": 6,\n        \"issue\": \"Auto body Mechanics\"\n    },\n    {\n        \"issueid\": 7,\n        \"issue\": \"Auto glass Mechanic\"\n    },\n    {\n        \"issueid\": 8,\n        \"issue\": \"Service Mechanics\"\n    },\n    {\n        \"issueid\": 9,\n        \"issue\": \"General automotive mechanic\"\n    },\n    {\n        \"issueid\": 10,\n        \"issue\": \"Wiring and lights Mechanics\"\n    }\n]";

        Gson gson = new Gson();
        MechTypes[] arrayOfObjects = gson.fromJson(jsonString, MechTypes[].class);


        return new SuccessResponseHandler(serviceConfig,arrayOfObjects).SuccResponse();

    }

    @Override
    public ApiResponseDTO getmechtypesfiltered(String speialization, String model,String locationtype,String location) {
        List<Mechanic> mechanics;
        String[] locationdetails=location.split(",");
        if(!locationtype.equalsIgnoreCase("custom")){
       List<Object[]>     mechanicsObj = mechanicRepository.getMechTypesFilteredNear(speialization, "%" + model + "%", locationdetails[0],locationdetails[1]);
       mechanics=mapObjectToDto(mechanicsObj);
        }
        else {
             mechanics = mechanicRepository.getMechTypesFiltered(speialization, "%" + model + "%","%"+location+"%");
        }
        List<MechanicsDto> mechanicsDtoList = new ArrayList<>();
        for (Mechanic mechanic:mechanics
             ) {

            mechanicsDtoList.add(mapMechanicToDto(mechanic));

        }


        return new SuccessResponseHandler(serviceConfig,mechanicsDtoList).SuccResponse();

    }


    public  MechanicsDto mapMechanicToDto(Mechanic mechanic) {
        MechanicsDto mechanicsDto = new MechanicsDto();
        mechanicsDto.setMechanic_id((int) mechanic.getId());
        mechanicsDto.setFirst_name(mechanic.getFirst_name());
        mechanicsDto.setLast_name(mechanic.getLast_name());
        mechanicsDto.setColor_code(mechanic.getColor_code()); // Assuming badge represents color code
        mechanicsDto.setMechanic_type(mechanic.getMechanic_type());
        mechanicsDto.setSpecialized_car(mechanic.getSpecialized_cars());
        mechanicsDto.setCurrent_address(mechanic.getCurrent_address());
        mechanicsDto.setCity(mechanic.getCity());
        // Map other fields as needed

        return mechanicsDto;
    }
    public  List<Mechanic> mapObjectToDto(List<Object[]> resultList){
        List<Mechanic> mechanics=new ArrayList<>();
        if (!resultList.isEmpty()) {

            for (Object[] row : resultList) {
                Mechanic dto = new Mechanic();

                dto.setId(Math.toIntExact((long) row[0]));
                dto.setFirst_name((String) row[3]);
                dto.setLast_name((String) row[4]);
                dto.setColor_code((String) row[2]);
                dto.setMechanic_type((String) row[7]);
                dto.setSpecialized_cars((String) row[8]);
                dto.setCity((String) row[11]);
                dto.setCurrent_address((String) row[12]);
                System.out.println("current address is"+(String)dto.getCurrent_address());


                mechanics.add(dto);
            }
            return mechanics;
        } else {
            return mechanics;
        }
    }
}
