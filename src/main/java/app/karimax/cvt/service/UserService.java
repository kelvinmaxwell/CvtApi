package app.karimax.cvt.service;



import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetailsService;

import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.JwtAuthenticationResponse;
import app.karimax.cvt.response.PhonVerResponse;



public interface UserService {
    UserDetailsService userDetailsService();
    
  User getbyEmailapp(String email);
  
  User findByphone(String phone);
  
  PhonVerResponse phonever(User user);
  
  
}
