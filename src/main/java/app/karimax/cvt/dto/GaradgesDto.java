package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class GaradgesDto {

    private long id;

    private String reference;

    private String name;

    private String garage_specialization_id;


    private String country;

    private String city;

    private String garage_location;

    private String city_council_approval_path;

    private String fire_extinguisher_file_path;

    private String business_registration_file_path;


    private String status;


    private Integer type;


    public  List<GaradgesDto> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<GaradgesDto> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 5) {

                GaradgesDto garadgesDto=new GaradgesDto();
                garadgesDto.setId((int)((long) objectArray[0]));
                garadgesDto.setName((String) objectArray[1]);
                garadgesDto.setCountry((String) objectArray[2]);
                garadgesDto.setCity((String) objectArray[3]);


                garadgesDto.setGarage_location(((String) objectArray[4]));

                // Assuming the order is: garageName, vehicleRegistration, status, created_at





                resultList.add(garadgesDto);
            }
        }

        return resultList;
    }
}
