package app.karimax.cvt.Serviceimpl;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;


import app.karimax.cvt.Utils.UniqueIdGenerator;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import app.karimax.cvt.dao.request.SignUpRequest;
import app.karimax.cvt.dao.request.SigninRequest;
import app.karimax.cvt.dao.request.mechsignuprequest;
import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.CustomerRepository;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.JwtAuthenticationResponse;
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
    private final JdbcTemplate jdbcTemplate;
    private final AuthenticationManager authenticationManager;
    LocalDateTime currentDate = LocalDateTime.now();
    Timestamp sqlTimestamp = Timestamp.valueOf(currentDate);
    @Override
    public JwtAuthenticationResponse signup(SignUpRequest request) {

        System.out.println("....................user phone number.................................>"+request.getPhone_number());
        User user = User.builder().phone_number(request.getPhone_number())
                .email(request.getEmail()).password(passwordEncoder.encode(request.getPassword()))
                .build();
        
        Customer customer=new Customer();
        customer.setCity(request.getCity());
        customer.setCountry(request.getCountry());
        customer.setGender(request.getGender());
        customer.setFirst_name(request.getFirstName());
        customer.setLast_name(request.getLastName());
        customer.setCurrent_address(request.getCurrent_address());
        customer.setCreated_at(sqlTimestamp);
        UniqueIdGenerator uniqueIdGenerator=new UniqueIdGenerator("CUS-","customers","reference",12);
        customer.setReference(uniqueIdGenerator.generateUniqueId(jdbcTemplate));
        
        
        
        
       Customer savedUser=customerRepository.save(customer);
    		   
    		   user.setUserable_id(savedUser.getId());
    		   user.setUserable_type("App\\Models\\Customer");
    		  
    		   userRepository.save(user);
        
        
        String jwt = jwtService.generateToken(user);
        Date jwtexpiry=jwtServiceimpl.extractExpiration(jwt);
        
        SimpleDateFormat DateFormat
        = new SimpleDateFormat("yyyy-MM-dd HH:mm.sss");

      // Initializing the calendar Object
      Calendar c = Calendar.getInstance();

    

      // Using format() method for conversion
      String formateddate
        = DateFormat.format(jwtexpiry);
      System.out.println("Formatted Date: " +
    		  formateddate);
        
       User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).auth_expiry(formateddate).id(newuser.getId()).userable_id(newuser.getUserable_id()).build();
    }

    @Override
    public JwtAuthenticationResponse signin(SigninRequest request) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(request.getEmail(), request.getPassword()));
        User user = userRepository.findByEmail(request.getEmail()).orElseThrow(() -> new IllegalArgumentException("Invalid email or password."));
        String jwt = jwtService.generateToken(user);
        
 Date jwtexpiry=jwtServiceimpl.extractExpiration(jwt);
        
        SimpleDateFormat DateFormat
        = new SimpleDateFormat("yyyy-MM-dd HH:mm.sss");

      // Initializing the calendar Object
      Calendar c = Calendar.getInstance();

    

      // Using format() method for conversion
      String formateddate
        = DateFormat.format(jwtexpiry);
      System.out.println("Formatted Date: " +
    		  formateddate);
        
        
        User newuser = userRepository.getbyEmailapp(request.getEmail());
        return JwtAuthenticationResponse.builder().token(jwt).email(newuser.getEmail()).phone(newuser.getPhone_number()).auth_expiry(formateddate).id(newuser.getId()).userable_type(newuser.getUserable_type()).userable_id(newuser.getUserable_id()).build();
    }

	@Override
	public User savemechanicbio(mechsignuprequest mechrequest) {
		Mechanic newMechanic=new Mechanic();
        UniqueIdGenerator uniqueIdGenerator=new UniqueIdGenerator("MEC-","mechanics","reference",12);
		newMechanic.setReference(uniqueIdGenerator.generateUniqueId(jdbcTemplate));
		newMechanic.setFirst_name(mechrequest.getFirst_name());
		newMechanic .setLast_name(mechrequest.getLast_name());
		newMechanic.setGender(mechrequest.getGender());
		newMechanic.setSpecialized_cars(mechrequest.getSpecialized_cars());
		newMechanic.setResume_file_path(mechrequest.getResume_file_path());
		newMechanic.setBlue_collar_position("appUser");
		newMechanic.setNext_of_kin("[{\"email\": \"cvtuser@hotmail.com\", \"last_name\": \"cvtuser\", \"first_name\": \"cvtuser\", \"phone_number\": \"+15519125905\"}]");
        newMechanic.setColor_code("#FF0000");
		newMechanic.setCountry("app");
		newMechanic.setCity("app");
		newMechanic.setMechanic_type("app");
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
		
		
		User newmechUser=userRepository.save(usr);
		
		
		 
		 
		
		
		
		
		return usr;
	}

	

	
}
