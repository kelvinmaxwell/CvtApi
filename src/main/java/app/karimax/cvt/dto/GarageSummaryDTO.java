package app.karimax.cvt.dto;

import app.karimax.cvt.model.*;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;
@Data
@AllArgsConstructor
public class GarageSummaryDTO {

    Garage garage;
    ManagerDto garageManager;
    List<User> garageMechanics;
    List<Services> garageServices;
}
