package app.karimax.cvt.service;



import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetailsService;

import app.karimax.cvt.model.User;



public interface UserService {
    UserDetailsService userDetailsService();
    
  User getbyEmailapp(String email);
}
