package app.karimax.cvt.dto;

import lombok.Data;

import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Data
public class PreInspectionRequestDao {
    Integer  customer_id;
    String seller_name;
    String seller_phone_number;
    String model;
    Integer garage_id;
    String garage;
    LocationDetails seller_location;

    String status;
    String created_at;

    public List<PreInspectionRequestDao> mapToListOfObjects(List<Object[]> listOfObjectArrays) {
        List<PreInspectionRequestDao> resultList = new ArrayList<>();

        for (Object[] objectArray : listOfObjectArrays) {
            if (objectArray != null && objectArray.length == 5) {

                PreInspectionRequestDao preInspectionRequestDao=new PreInspectionRequestDao();
                preInspectionRequestDao.setSeller_name((String) objectArray[0]);
                preInspectionRequestDao.setSeller_phone_number((String) objectArray[1]);
                preInspectionRequestDao.setStatus((String) objectArray[2]);
                try {
                    Date created_at = ((Date) objectArray[3]);
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String   created_at1= dateFormat.format(created_at);
                    preInspectionRequestDao.setCreated_at(created_at1);
                }
                catch (NullPointerException e){

                }


                preInspectionRequestDao.setGarage(((String) objectArray[4]));


                // Assuming the order is: garageName, vehicleRegistration, status, created_at





                resultList.add(preInspectionRequestDao);
            }
        }

        return resultList;
    }


}
