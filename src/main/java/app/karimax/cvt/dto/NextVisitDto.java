package app.karimax.cvt.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
public class NextVisitDto {
    private Timestamp createdAt;
    private String status;
    private String issueDescription;
    private String garage;
}
