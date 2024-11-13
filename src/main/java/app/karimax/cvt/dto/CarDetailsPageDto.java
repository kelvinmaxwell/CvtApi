package app.karimax.cvt.dto;

import app.karimax.cvt.model.Services;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarDetailsPageDto {
    private String lastCheckUp;
    private NextVisitDto nextVisit;
    private List<Services>  serviceHistory;
}
