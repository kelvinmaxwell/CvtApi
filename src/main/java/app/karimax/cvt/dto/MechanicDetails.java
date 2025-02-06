package app.karimax.cvt.dto;

import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class MechanicDetails {
    private User user;
    private Mechanic mechanic;

    private  Integer reviews;

    private  Integer orders;

    private  Integer experience;
    private List<MechSpecializations> mechSpecializationsList;



}

