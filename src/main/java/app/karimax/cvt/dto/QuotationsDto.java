package app.karimax.cvt.dto;

import lombok.Data;

@Data
public class QuotationsDto {


    String reference;
    String job_card_id;
    String title;
    private Integer id;
    private Integer garage_id;


    private Integer customer_id;


    private Integer vehicle_id;


    private String issue_description;

    public String status;
    private Integer initiated_by;
}
