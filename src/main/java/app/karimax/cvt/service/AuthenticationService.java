package app.karimax.cvt.service;

import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.User;
import app.karimax.cvt.response.JwtAuthenticationResponse;

public interface AuthenticationService {
    JwtAuthenticationResponse signup(SignUpRequest request);

    JwtAuthenticationResponse signin(SigninRequest request);
    
    User savemechanicbio(mechsignuprequest mech);
    
   
    
}
