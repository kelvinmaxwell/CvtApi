package app.karimax.cvt.service;


import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.LoginDto;
import app.karimax.cvt.model.User;


public interface AuthenticationService {

    ApiResponseDTO authOGoogle(String idToken);

    ApiResponseDTO login(LoginDto loginDto);
    
   
    
}
