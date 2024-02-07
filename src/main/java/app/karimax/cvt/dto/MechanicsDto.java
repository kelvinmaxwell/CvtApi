package app.karimax.cvt.dto;

import lombok.Data;

@Data
public class MechanicsDto {
    Integer mechanic_id;
    Integer garage_id;
    String  first_name;
    String  last_name;
    String  color_code;
    String mechanic_type;

    String specialized_car;
}
