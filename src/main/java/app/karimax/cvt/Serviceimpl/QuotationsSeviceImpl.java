package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dao.request.QuotationsPostRequest;
import app.karimax.cvt.dto.ActiveQuotation;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.CarDetailsPageDto;
import app.karimax.cvt.dto.NextVisitDto;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Quotations;
import app.karimax.cvt.model.User;
import app.karimax.cvt.model.VehicleDetails;
import app.karimax.cvt.repository.QuotationRepository;
import app.karimax.cvt.repository.QuotationServiceRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.repository.VehicleDetailsRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.QuotationsService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import static app.karimax.cvt.dto.ActiveQuotation.mapToListOfObjects;


@Service
@RequiredArgsConstructor
public class QuotationsSeviceImpl implements QuotationsService {

    private final QuotationRepository quotationRepository;
    private final QuotationServiceRepository quotationServiceRepository;
    private final VehicleDetailsRepository vehicleDetailsRepository;
    private final UserRepository userRepository;
    private final JdbcTemplate jdbcTemplate;
    private final Configs serviceConfig;
    Date currentDate = new Date();
    // Convert the Java Date to a java.sql.Timestamp
    Timestamp currentTimestamp = new Timestamp(currentDate.getTime());

    @Override
    public ApiResponseDTO saveQuotations(QuotationsPostRequest quotationsPostRequest) {

        User user = userRepository.findCustomerByUserId(Long.valueOf(quotationsPostRequest.getUserId()));
        VehicleDetails vehicleDetails = vehicleDetailsRepository.findVehicleBYRegistrationNumber(quotationsPostRequest.getVehicleId());
        System.out.println("...........................request from phone.>" + quotationsPostRequest);
        UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("Q-", "quotations", "reference", 12);
        String refrence = uniqueIdGenerator.generateUniqueId(jdbcTemplate);

        Quotations quotations = new Quotations();
        quotations.setReference(refrence);
        quotations.setGarage_id(quotationsPostRequest.getGarageId());
        quotations.setCustomer_id((int) user.getUserable_id());
        quotations.setVehicle_id(vehicleDetails.getVehicle_id());
        quotations.setStatus("Pending");
        quotations.setJob_card_id(String.valueOf(0));
        quotations.setIssue_description("<p>" + quotationsPostRequest.getIssueDescription() + "</p>");
        quotations.setInitiated_by(quotationsPostRequest.getUserId());
        quotations.setCreated_at(currentTimestamp);

        quotations = quotationRepository.save(quotations);

//        List<QuotationService> quotationServiceList = quotationsPostRequest.getQuotationsServiceList();
//
//        for ( QuotationService quote: quotationServiceList) {
//            quote.setQuotation_id(quotations.getId());
//            quote.setDescription("<p>"+quotationsPostRequest.getIssueDescription()+"</p>");
//            quote.setCreated_at(currentTimestamp);
//
//
//        }

//        List<QuotationService> quotationServices     =quotationServiceRepository.saveAll(quotationServiceList);

        return new SuccessResponseHandler(serviceConfig, quotations).SuccResponse();


    }

    @Override
    public ApiResponseDTO getActiveQuotation(Integer userId, Integer serviceId) {
        User user = userRepository.findCustomerByUserId(Long.valueOf(userId));


        List<Object[]> getActivequoyes = quotationServiceRepository.getPendingQuotations(serviceId, (int) user.getUserable_id());

        if (getActivequoyes.isEmpty()) {
            return new SuccessResponseHandler(serviceConfig, userId).SuccResponse();
        } else {
            return new ErrorExceptionHandler(serviceConfig, "Active Quotation").ErrorResponse();
        }

    }

    @Override
    public ApiResponseDTO getAlluserquotations(Integer userId) {
        User user = userRepository.findCustomerByUserId(Long.valueOf(userId));
        List<Object[]> getActivequotes = quotationRepository.getPendingQuotations((int) user.getUserable_id());


        if (getActivequotes.isEmpty()) {
            return new ErrorExceptionHandler(serviceConfig, "No record found").ErrorResponse();

        } else {

            List<ActiveQuotation> activeQuotations = mapToListOfObjects(getActivequotes);

            return new SuccessResponseHandler(serviceConfig, activeQuotations).SuccResponse();
        }
    }

    @Override
    public ApiResponseDTO getVehicleDescriptionContent(String vehicleRegistration) {
        VehicleDetails vehicleDetails = vehicleDetailsRepository.findVehicleBYRegistrationNumber(vehicleRegistration);

        Timestamp lastCheckUp = quotationRepository.findLastCheckUp(vehicleDetails.getVehicle_id());

        List<JobCard> jobCardList=quotationRepository.findServiceHistoryWithAmount(vehicleDetails.getVehicle_id());

        Pageable pageable = PageRequest.of(0, 1); // Get only the first result
        NextVisitDto nextVisit = quotationRepository.findNextVisit(vehicleDetails.getVehicle_id(), pageable).getContent().stream().findFirst().orElse(null);


        CarDetailsPageDto carDetailsPageDto=new CarDetailsPageDto(lastCheckUp,nextVisit,jobCardList);

        return new SuccessResponseHandler(serviceConfig, carDetailsPageDto).SuccResponse();


    }
}
