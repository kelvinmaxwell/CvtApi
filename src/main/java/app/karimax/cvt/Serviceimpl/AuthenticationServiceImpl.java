package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.GoogleIdTokenDTO;
import app.karimax.cvt.dto.LoginDto;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.JwtAuthResponse;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class AuthenticationServiceImpl implements AuthenticationService {


    private final Configs configs;
    private final UserRepository userRepository;
    private  final  JwtServiceImpl jwtService;
    private final AuthenticationManager authenticationManager;

    @Override
    public ApiResponseDTO authOGoogle(String idToken) {
        String TOKEN_INFO_URL = "https://oauth2.googleapis.com/tokeninfo?id_token=";

        try {
            RestTemplate restTemplate = new RestTemplate();
            String url = TOKEN_INFO_URL + idToken;
            HttpHeaders httpHeaders = new HttpHeaders();
            httpHeaders.setContentType(MediaType.APPLICATION_FORM_URLENCODED);
            HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(httpHeaders);


            GoogleIdTokenDTO googleIdTokenDTO = restTemplate.postForObject(url, requestEntity, GoogleIdTokenDTO.class);
            // Optionally, you can further validate the token, such as checking `aud` or `exp` claims
            assert googleIdTokenDTO != null;
            if (googleIdTokenDTO.getEmailVerified().equalsIgnoreCase("true")) {
                Optional<User> optionalUser = userRepository.findByEmail(googleIdTokenDTO.getEmail());
                if (optionalUser.isEmpty()) {
                    return new ErrorExceptionHandler(configs, configs.getNotFoundStatusDesc()).ErrorResponseNotFound();
                }
                JwtAuthResponse jwtAuthResponse=new JwtAuthResponse();
                jwtAuthResponse.setAccessToken(jwtService.generateToken(new HashMap<>(), optionalUser.get()));


                jwtAuthResponse.setExpiresAt(new Timestamp(jwtService.extractExpiration(jwtAuthResponse.getAccessToken()).getTime()));
                jwtAuthResponse.setCreatedAt(new Timestamp(System.currentTimeMillis()));
                jwtAuthResponse.setUserDto(optionalUser.get());

                return new SuccessResponseHandler(configs, jwtAuthResponse).SuccResponse();
            }

            return new ErrorExceptionHandler(configs, configs.getInvalidAuthTokenDesc()).InvalidTokenErrorResponse();


        } catch (Exception e) {
            System.err.println(e.getMessage());
            return new ErrorExceptionHandler(configs, configs.getFailureStatusDesc()).ErrorResponse();

        }
    }

    @Override
    public ApiResponseDTO login(LoginDto loginDto) {

        try {
            Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                    loginDto.getUsernameOrEmail(),
                    loginDto.getPassword()
            ));
            Optional<User> optionalUser = userRepository.findByEmail(loginDto.getUsernameOrEmail());

            JwtAuthResponse jwtAuthResponse = new JwtAuthResponse();
            jwtAuthResponse.setAccessToken(jwtService.generateToken(new HashMap<>(), optionalUser.get()));


            jwtAuthResponse.setExpiresAt(new Timestamp(jwtService.extractExpiration(jwtAuthResponse.getAccessToken()).getTime()));
            jwtAuthResponse.setCreatedAt(new Timestamp(System.currentTimeMillis()));
            jwtAuthResponse.setUserDto(optionalUser.get());

            return new SuccessResponseHandler(configs, jwtAuthResponse).SuccResponse();
        }  catch (
    BadCredentialsException ex) {
        return new ErrorExceptionHandler(configs, configs.getInvalidCredentialsStatusDesc()).ErrorResponse();

    }


    }


}
