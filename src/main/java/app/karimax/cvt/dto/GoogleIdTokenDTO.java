package app.karimax.cvt.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class GoogleIdTokenDTO {
    @JsonProperty("iss")
    private String issuer;

    @JsonProperty("azp")
    private String authorizedParty;

    @JsonProperty("aud")
    private String audience;

    @JsonProperty("sub")
    private String subject;

    @JsonProperty("email")
    private String email;

    @JsonProperty("email_verified")
    private String emailVerified;

    @JsonProperty("name")
    private String name;

    @JsonProperty("picture")
    private String picture;

    @JsonProperty("given_name")
    private String givenName;

    @JsonProperty("family_name")
    private String familyName;

    @JsonProperty("iat")
    private String issuedAt;

    @JsonProperty("exp")
    private String expiration;

    @JsonProperty("alg")
    private String algorithm;

    @JsonProperty("kid")
    private String keyId;

    @JsonProperty("typ")
    private String type;

}
