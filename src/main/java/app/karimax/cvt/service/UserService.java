package app.karimax.cvt.service;




import app.karimax.cvt.dto.ApiResponseDTO;
import org.springframework.security.core.userdetails.UserDetailsService;

import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;

import app.karimax.cvt.response.PhonVerResponse;



public interface UserService {
    UserDetailsService userDetailsService();

    ApiResponseDTO getbyEmailapp(String email);

    ApiResponseDTO findByphone(String phone);

  
  PhonVerResponse addvercode(User user);

  
  
  PhonVerResponse confirmcode(User user);
  
  

  

  
}
