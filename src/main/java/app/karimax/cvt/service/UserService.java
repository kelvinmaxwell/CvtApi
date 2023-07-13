package app.karimax.cvt.service;




import org.springframework.security.core.userdetails.UserDetailsService;

import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;

import app.karimax.cvt.response.PhonVerResponse;



public interface UserService {
    UserDetailsService userDetailsService();
    
  User getbyEmailapp(String email);
  
  User findByphone(String phone);
  
  
  PhonVerResponse addvercode(User user);

  
  
  PhonVerResponse confirmcode(User user);
  
  

  

  
}
