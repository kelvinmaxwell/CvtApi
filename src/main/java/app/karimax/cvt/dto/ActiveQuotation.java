package app.karimax.cvt.dto;

import lombok.Data;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class ActiveQuotation {
    private Integer quoationid;
    private String garageName;
    private String vehicleRegistration;
    private String status;
    private String created_at;
    private String job_card_id;
    private String description;

    // Constructors, getters, and setters...

    // Assuming a constructor to initialize the fields
    public ActiveQuotation(Integer quoationid, String garageName, String vehicleRegistration, String status, String created_at, String job_card_id,String description) {
        this.garageName = garageName;
        this.vehicleRegistration = vehicleRegistration;
        this.status = status;
        this.created_at = created_at;
        this.job_card_id = job_card_id;
        this.quoationid = quoationid;
        this.description=description;
    }

    // Example method to map Object[] to ActiveQuotation
    public static List<ActiveQuotation> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<ActiveQuotation> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 7) {
                // Assuming the order is: garageName, vehicleRegistration, status, created_at
                String garageName = (String) objectArray[0];
                String vehicleRegistration = (String) objectArray[1];
                String status = (String) objectArray[2];
                Date created_at = ((Date) objectArray[3]);
                String job_card_id = ((String) objectArray[4]);
                long quoatation_id = ((long) objectArray[6]);

                String description = (String) objectArray[5];
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String created_at1 = dateFormat.format(created_at);


                resultList.add(new ActiveQuotation((int) quoatation_id, garageName, vehicleRegistration, status, created_at1, job_card_id,description));
            }
        }

        return resultList;
    }
}