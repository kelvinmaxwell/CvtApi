package app.karimax.cvt.service;


import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.PhonVerResponse;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface UserService {
    UserDetailsService userDetailsService();

    ApiResponseDTO getbyEmailapp(String email);

    ApiResponseDTO findByphone(String phone);

    ApiResponseDTO getAllMechanics();


    PhonVerResponse addvercode(User user);


    PhonVerResponse confirmcode(User user);


}
