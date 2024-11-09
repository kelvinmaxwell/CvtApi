package app.karimax.cvt.dto.registration;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CarDto {
    private String carRegNo;
    private String make;
    private String model;
    private String year;
    private String engineSize;
    private String trim;
    @JsonIgnore
    private Image image;
    private Long userId;


}

