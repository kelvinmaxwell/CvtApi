package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
public class GaradgesDto {

    private long id;

    private String reference;

    private String name;

    private String garage_specialization_id;


    private String country;

    private String city;

    private String garage_location;

    private String city_council_approval_path;

    private String fire_extinguisher_file_path;

    private String business_registration_file_path;


    private String status;


    private Integer type;
}
