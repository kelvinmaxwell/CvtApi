package app.karimax.cvt.dto.registration;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UserDto {
    private String username;
    private String firstName;
    private String lastName;
    private  String idNumber;
    private String email;
    private String phone;
    private String password;
    private String cpassword;
    private String gender;
}
