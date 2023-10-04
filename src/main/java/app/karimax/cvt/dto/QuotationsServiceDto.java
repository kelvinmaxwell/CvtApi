package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class QuotationsServiceDto {

    private Integer id;


    Integer quotation_id;

    String service_id;

    String packageName;

    String description;


    private Double estimated_repair_time;


    private Integer added_by;
}
