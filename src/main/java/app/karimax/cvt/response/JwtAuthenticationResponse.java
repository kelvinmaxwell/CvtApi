package app.karimax.cvt.response;

import app.karimax.cvt.model.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class JwtAuthenticationResponse {
    private String token;
    private String email;
    private int id;
    private String phone;
    private String role;
    private String userable_type;
    private long userable_id;


    private String auth_expiry;
    
}
