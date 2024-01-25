package app.karimax.cvt.dto;

import com.google.gson.annotations.SerializedName;
import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class VehicleDetailsDto {

Integer vehicleId;
    Integer userId;

    String vehicleRegistration;

    String vehicleMake;

    String VehicleModel;

    String vehicleYear;

    String vehicleEngineCc;

    String createdAt;

    public List<VehicleDetailsDto> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<VehicleDetailsDto> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 8 ){

                VehicleDetailsDto vehicleDetailsDto=new VehicleDetailsDto();
               vehicleDetailsDto.setUserId((int)((long) objectArray[0]));
                vehicleDetailsDto.setVehicleModel(String.valueOf((String) objectArray[1]));
               vehicleDetailsDto.setVehicleMake(String.valueOf((String) objectArray[2]));
               vehicleDetailsDto.setVehicleYear((String) objectArray[3]);
                vehicleDetailsDto.setVehicleEngineCc(String.valueOf((int) objectArray[4]));
                vehicleDetailsDto.setVehicleRegistration((String) objectArray[5]);

                vehicleDetailsDto.setVehicleId((int)((long) objectArray[7]));

                Date created_at = ((Date) objectArray[6]);
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String   created_at1= dateFormat.format(created_at);
                vehicleDetailsDto.setCreatedAt(created_at1);




                // Assuming the order is: garageName, vehicleRegistration, status, created_at





                resultList.add(vehicleDetailsDto);
            }
        }

        return resultList;
    }
}
