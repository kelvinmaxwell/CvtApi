package app.karimax.cvt.response;


import app.karimax.cvt.model.User;
import lombok.Data;

import java.sql.Timestamp;
import java.util.Date;

@Data

public class JwtAuthResponse {
    private String accessToken;
    private String tokenType;

    private Timestamp expiresAt;

    private Timestamp createdAt;
    private User userDto;
}
