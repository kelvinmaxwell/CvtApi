package app.karimax.cvt.config;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@Data
@NoArgsConstructor
@PropertySource("classpath:application.yml")
@ConfigurationProperties(prefix = "configs")
public class Configs {

    private Integer failureResultCode;
    private Integer successStatusCode;
    private Integer deleteSuccessStatusCode;
    private Integer failureStatusCode;
    private Integer successStatusType;
    private Integer failureStatusType;
    private Integer notFoundStatusType;
    private Integer notFoundStatusCode;

    private Integer invalidAuthToken;


    private String successStatusDesc;
    private String failureStatusDesc;
    private String notFoundStatusDesc;
    private String sessionExpired;
    private String invalidAuthTokenDesc;
    private String duplicateEntryDesc;

    private String permissionDeniedStatusDesc;
    private String counties;
    private String defaultImage;
    private String serverImageUrl;

}
