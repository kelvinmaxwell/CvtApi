package app.karimax.cvt.dao.request;

import app.karimax.cvt.model.QuotationService;

import lombok.Data;

import java.util.List;

@Data
public class QuotationsPostRequest {
    String reference;

    String title;

    private Integer garage_id;


    private Integer customer_id;


    private Integer vehicle_id;


    private String issue_description;


    private Integer initiated_by;
    private List<QuotationService> quotationsServiceList;

}
