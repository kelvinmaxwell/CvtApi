package app.karimax.cvt.service.impl;

import java.util.Optional;
import java.util.Random;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.Role;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.CustomerRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.JwtAuthenticationResponse;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.service.AuthenticationService;
import app.karimax.cvt.service.JwtService;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthenticationServiceImpl implements AuthenticationService {
    private final UserRepository userRepository;
    private final CustomerRepository customerRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    @Override
    public JwtAuthenticationResponse signup(SignUpRequest request) {
        var user = User.builder().firstName(request.getFirstName()).lastName(request.getLastName()).phone_number(request.getPhone_number())
                .email(request.getEmail()).password(passwordEncoder.encode(request.getPassword()))
                .role(Role.USER).build();
        
        Customer customer=new Customer();
        customer.setCity("app");
        customer.setCountry("app");
        customer.setGender("app");
        customer.setFirst_name(request.getFirstName());
        customer.setLast_name(request.getFirstName());
        customer.setReference("	CUST-"+new UUIDGeneratorLogic().generateID());
        
        
        
        
       Customer savedUser=customerRepository.save(customer);
    		   
    		   user.setUserable_id(savedUser.getId());
    		   user.setUserable_type("App\\Models\\Customer");
    		  
    		   userRepository.save(user);
        
        
        var jwt = jwtService.generateToken(user);
       User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).id(newuser.getId()).build();
    }

    @Override
    public JwtAuthenticationResponse signin(SigninRequest request) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.getEmail(), request.getPassword()));
        var user = userRepository.findByEmail(request.getEmail())
                .orElseThrow(() -> new IllegalArgumentException("Invalid email or password."));
        var jwt = jwtService.generateToken(user);
        
        User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).id(newuser.getId()).build();
    }

	
}
