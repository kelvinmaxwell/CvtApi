package app.karimax.cvt.dto;

import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Services;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CarDetailsPageDto {
    private Timestamp lastCheckUp;
    private NextVisitDto nextVisit;
    private List<JobCard>  serviceHistory;
}
