package app.karimax.cvt.dao.request;

import app.karimax.cvt.model.QuotationService;

import lombok.Data;

import java.util.List;

@Data
public class QuotationsPostRequest {
    String reference;

    String title;

    private Integer garageId;


    private Integer userId;


    private String vehicleId;
    private Long serviceId;


    private String issueDescription;


    private Integer initiated_by;
    private List<QuotationService> quotationsServiceList;

}
