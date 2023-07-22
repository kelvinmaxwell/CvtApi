package app.karimax.cvt.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Optional;
import java.util.Random;


import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.Role;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.CustomerRepository;
import app.karimax.cvt.repository.MechanicRepository;
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
    private final MechanicRepository mechanicRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final JwtServiceImpl jwtServiceimpl;
    private final AuthenticationManager authenticationManager;
    @Override
    public JwtAuthenticationResponse signup(SignUpRequest request) {
        User user = User.builder().phone_number(request.getPhone_number())
                .email(request.getEmail()).password(passwordEncoder.encode(request.getPassword()))
                .role(Role.USER).build();
        
        Customer customer=new Customer();
        customer.setCity("app");
        customer.setCountry("app");
        customer.setGender("app");
        customer.setFirst_name(request.getFirstName());
        customer.setLast_name(request.getFirstName());
        customer.setReference("CUST-"+new UUIDGeneratorLogic().generateID());
        
        
        
        
       Customer savedUser=customerRepository.save(customer);
    		   
    		   user.setUserable_id(savedUser.getId());
    		   user.setUserable_type("App\\Models\\Customer");
    		  
    		   userRepository.save(user);
        
        
        String jwt = jwtService.generateToken(user);
        Date jwtexpiry=jwtServiceimpl.extractExpiration(jwt);
        
        SimpleDateFormat DateFormat
        = new SimpleDateFormat("yyyy-MM-dd HH:mm.SSS");

      // Initializing the calendar Object
      Calendar c = Calendar.getInstance();

    

      // Using format() method for conversion
      String formateddate
        = DateFormat.format(jwtexpiry);
      System.out.println("Formatted Date: " +
    		  formateddate);
        
       User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).auth_expiry(formateddate).id(newuser.getId()).build();
    }

    @Override
    public JwtAuthenticationResponse signin(SigninRequest request) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.getEmail(), request.getPassword()));
        User user = userRepository.findByEmail(request.getEmail()).orElseThrow(() -> new IllegalArgumentException("Invalid email or password."));
        String jwt = jwtService.generateToken(user);
        
 Date jwtexpiry=jwtServiceimpl.extractExpiration(jwt);
        
        SimpleDateFormat DateFormat
        = new SimpleDateFormat("yyyy-MM-dd HH:mm.SSS");

      // Initializing the calendar Object
      Calendar c = Calendar.getInstance();

    

      // Using format() method for conversion
      String formateddate
        = DateFormat.format(jwtexpiry);
      System.out.println("Formatted Date: " +
    		  formateddate);
        
        
        User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).auth_expiry(formateddate).id(newuser.getId()).role(newuser.getRole().toString()).build();
    }

	@Override
	public User savemechanicbio(mechsignuprequest mechrequest) {
		Mechanic newMechanic=new Mechanic();
		newMechanic.setReference("MEC-"+new UUIDGeneratorLogic().generateID());
		newMechanic.setFirst_name(mechrequest.getFirst_name());
		newMechanic .setLast_name(mechrequest.getLast_name());
		newMechanic.setGender(mechrequest.getGender());
		newMechanic.setSpecialized(mechrequest.getSpecialized());
		newMechanic.setResume_file_path(mechrequest.getResume_file_path());
		
		newMechanic.setNext_of_kin("app");
		newMechanic.setCountry("app");
		newMechanic.setCity("app");
		newMechanic.setBadge(mechrequest.getBadge());
		newMechanic.setCurrent_address("{\"message\":\" \"}");
		
		
		
		
		Mechanic savedmech=mechanicRepository.save(newMechanic);
		
		Mechanic mechtemp =mechanicRepository.getbyrefrence(newMechanic.getReference());
		
		User usr=new User();
		usr.setEmail(mechrequest.getEmail());
		usr.setPhone_number(mechrequest.getPhone_number());
		
		usr.setUserable_id(mechtemp.getId());
		usr.setPassword(passwordEncoder.encode(mechrequest.getPassword()));	
		usr.setUserable_type("App\\Models\\Mechanic");
		usr.setRole(Role.MECHANIC);
		
		User newmechUser=userRepository.save(usr);
		
		
		 
		 
		
		
		
		
		return usr;
	}

	

	
}
