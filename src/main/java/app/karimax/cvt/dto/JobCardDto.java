package app.karimax.cvt.dto;

import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class JobCardDto {
    String reference;
    String vehicleRegistration;
    String description;
    String closedAt;
    String garageName;
    String status;

    public List<JobCardDto> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<JobCardDto> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 7){

                JobCardDto jobCardDto=new JobCardDto();
                jobCardDto.setReference((String) objectArray[0]);
                jobCardDto.setVehicleRegistration((String) objectArray[1]);
                jobCardDto.setDescription((String) objectArray[2]);

                try {
                    Date created_at = ((Date) objectArray[5]);
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String   created_at1= dateFormat.format(created_at);
                    jobCardDto.setClosedAt(created_at1);
                }
                catch (NullPointerException e){

                }
                jobCardDto.setGarageName((String) objectArray[4]);
                jobCardDto.setStatus((String) objectArray[6]);





                // Assuming the order is: garageName, vehicleRegistration, status, created_at





                resultList.add(jobCardDto);
            }
        }

        return resultList;
    }
}
