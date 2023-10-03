package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
public class ServiceDto {

    private Integer id;

    String name;

    Integer service_category_id;

    String packageName;


    private Integer garage_id;


    private Double price;
}
