package app.karimax.cvt.dao.request;

import app.karimax.cvt.model.Role;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SignUpRequest {
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String phone_number;
    private String phone;
    private String city;
    private String country;
    private  String gender;
    private String current_address;
    
    @Enumerated(EnumType.STRING)
    private Role role;
    
}
