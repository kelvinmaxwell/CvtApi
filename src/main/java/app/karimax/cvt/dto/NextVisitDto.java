package app.karimax.cvt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class NextVisitDto {
    private String createdAt;
    private String status;
    private String issueDescription;
    private String garage;
}
