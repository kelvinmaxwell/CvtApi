package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dao.request.QuotationsPostRequest;
import app.karimax.cvt.dto.ActiveQuotation;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.QuotationService;
import app.karimax.cvt.model.Quotations;
import app.karimax.cvt.repository.QuotationRepository;
import app.karimax.cvt.repository.QuotationServiceRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.QuotationsService;
import lombok.RequiredArgsConstructor;
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
    private final JdbcTemplate jdbcTemplate;

    Date currentDate = new Date();

    // Convert the Java Date to a java.sql.Timestamp
    Timestamp currentTimestamp = new Timestamp(currentDate.getTime());





    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO saveQuotations(QuotationsPostRequest quotationsPostRequest) {

        System.out.println("...........................request from phone.>"+quotationsPostRequest);
        UniqueIdGenerator uniqueIdGenerator=new UniqueIdGenerator("Q-","quotations","reference",12);
      String refrence=  uniqueIdGenerator.generateUniqueId(jdbcTemplate);

      Quotations quotations=new Quotations();
      quotations.setReference(refrence);
      quotations.setGarage_id(quotationsPostRequest.getGarageId());
      quotations.setCustomer_id(quotationsPostRequest.getCustomerId());
      quotations.setVehicle_id(quotationsPostRequest.getVehicleId());
      quotations.setStatus("Pending");
      quotations.setJob_card_id(String.valueOf(0));
      quotations.setIssue_description("<p>"+quotationsPostRequest.getIssueDescription()+"</p>");
      quotations.setInitiated_by(quotationsPostRequest.getCustomerId());
      quotations.setCreated_at(currentTimestamp);

      quotations=quotationRepository.save(quotations);

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

        return new SuccessResponseHandler(serviceConfig,quotations).SuccResponse();


    }

    @Override
    public ApiResponseDTO getActiveQuotation(Integer userId, Integer serviceId) {

        List<Object[]> getActivequoyes=quotationServiceRepository.getPendingQuotations(serviceId,userId);

        if(getActivequoyes.isEmpty())
        {
            return new SuccessResponseHandler(serviceConfig,userId).SuccResponse();
        }
        else{
            return  new ErrorExceptionHandler(serviceConfig,"Active Quotation").ErrorResponse();
        }

    }

    @Override
    public ApiResponseDTO getAlluserquotations(Integer userId) {
        List<Object[]> getActivequotes=quotationRepository.getPendingQuotations(userId);


        if(getActivequotes.isEmpty())
        {
            return  new ErrorExceptionHandler(serviceConfig,"No record found").ErrorResponse();

        }
        else{

            List<ActiveQuotation> activeQuotations = mapToListOfObjects(getActivequotes);

            return new SuccessResponseHandler(serviceConfig,activeQuotations).SuccResponse();
        }
    }
}
