package app.karimax.cvt.dto;

import app.karimax.cvt.model.Manager;
import app.karimax.cvt.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ManagerDto {
    Manager manager;
    User user;
}
