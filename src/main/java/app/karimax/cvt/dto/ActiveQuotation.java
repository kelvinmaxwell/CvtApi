package app.karimax.cvt.dto;

import lombok.Data;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
@Data
public class ActiveQuotation {
    private String garageName;
    private String vehicleRegistration;
    private String status;
    private String created_at;

    // Constructors, getters, and setters...

    // Assuming a constructor to initialize the fields
    public ActiveQuotation(String garageName, String vehicleRegistration, String status, String created_at) {
        this.garageName = garageName;
        this.vehicleRegistration = vehicleRegistration;
        this.status = status;
        this.created_at = created_at;
    }

    // Example method to map Object[] to ActiveQuotation
    public static List<ActiveQuotation> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<ActiveQuotation> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 4) {
                // Assuming the order is: garageName, vehicleRegistration, status, created_at
                String garageName = (String) objectArray[0];
                String vehicleRegistration = (String) objectArray[1];
                String status = (String) objectArray[2];
                Date created_at = ((Date) objectArray[3]);

                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
             String   created_at1= dateFormat.format(created_at);


                // Convert milliseconds to java.sql.Timestamp




                resultList.add(new ActiveQuotation(garageName, vehicleRegistration, status, created_at1));
            }
        }

        return resultList;
    }
}