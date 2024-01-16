package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.JobCardDto;
import app.karimax.cvt.dto.LocationDetails;
import app.karimax.cvt.dto.PreInspectionRequestDao;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.PreInspectionRequest;
import app.karimax.cvt.model.QuotationService;
import app.karimax.cvt.model.VehicleModelsDao;
import app.karimax.cvt.repository.PreInspectionRepository;
import app.karimax.cvt.repository.QuotationServiceRepository;
import app.karimax.cvt.repository.VehiclesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.PreInspectionService;
import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@RequiredArgsConstructor
@Service
public class PreInspectionServiceImpl implements PreInspectionService {

    private final PreInspectionRepository preInspectionRepository;
    private  final VehiclesRepository vehiclesRepository;
    private final JdbcTemplate jdbcTemplate;
    private  PreInspectionRequest preInspectionRequest;
    Date currentDate = new Date();

    // Convert the Java Date to a java.sql.Timestamp
    Timestamp currentTimestamp = new Timestamp(currentDate.getTime());





    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getActiveInspection(Integer userid) {

        return new SuccessResponseHandler(serviceConfig,preInspectionRepository.getInspectionByCustomer(userid,"draft")).SuccResponse();

}

    @Override
    public ApiResponseDTO saveInspectionRequest(PreInspectionRequestDao preInspectionRequestDao) {
        Gson gson=new Gson();
        String jsonLocation = gson.toJson(preInspectionRequestDao.getSeller_location());
        String[] dataArray = preInspectionRequestDao.getModel().split(",");
        List<VehicleModelsDao> vehicleModelsDao=vehiclesRepository.findVehicleByDetails(dataArray[0],dataArray[1],dataArray[2]);

        PreInspectionRequest newPreInspection=new PreInspectionRequest();
        newPreInspection.setVehicle_model_id(Long.valueOf(vehicleModelsDao.get(0).getId()));
        newPreInspection.setCustomer_id(preInspectionRequestDao.getCustomer_id());
        newPreInspection.setStatus(preInspectionRequestDao.getStatus());
        newPreInspection.setSeller_name(preInspectionRequestDao.getSeller_name());
        newPreInspection.setSeller_phone_number(preInspectionRequestDao.getSeller_phone_number());
        newPreInspection.setSeller_location(jsonLocation);
        newPreInspection.setGarage_id(preInspectionRequestDao.getGarage_id());
        newPreInspection.setCreated_at(currentTimestamp);






        return new SuccessResponseHandler(serviceConfig, preInspectionRepository.save(newPreInspection)).SuccResponse();
    }

    @Override
    public ApiResponseDTO getuserinspection(Integer userid) {
      List<Object[]> inpsectionhistory=  preInspectionRepository.getInspectionHistory(userid);
PreInspectionRequestDao preInspectionRequestDao=new PreInspectionRequestDao();

        List<PreInspectionRequestDao> preInspectionRequestDaoList=preInspectionRequestDao.mapToListOfObjects(inpsectionhistory);

            return new SuccessResponseHandler(serviceConfig,preInspectionRequestDaoList).SuccResponse();



    }
}
