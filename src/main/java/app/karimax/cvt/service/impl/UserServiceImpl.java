package app.karimax.cvt.service.impl;



import java.io.IOException;
import java.util.HashMap;
import java.util.Random;



import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.RequestBody;
import com.squareup.okhttp.Response;

import app.karimax.cvt.exception.ResourceNotFoundException;

import app.karimax.cvt.model.User;

import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    
    
    @Override
    public UserDetailsService userDetailsService() {
        return new UserDetailsService() {
            @Override
            public UserDetails loadUserByUsername(String username) {
                return userRepository.findByEmail(username)
                        .orElseThrow(() -> new UsernameNotFoundException("User not found"));
            }
        };
    }
	@Override
	public User getbyEmailapp(String email) {
		User user=userRepository.getbyEmailapp(email);
		if(user!=null) {
		return user;
		
		}
		else {
			throw new ResourceNotFoundException("UserNotFound","name",email);
		}
	}
	@Override
	public User findByphone(String phone) {
		User user=userRepository.findByPhone_number(phone);
		if(user!=null) {
		return user;
		
		}
		else {
			throw new ResourceNotFoundException("User Not Found","","");
		}
	}
	@Override
	public PhonVerResponse addvercode(User user) {
		User existingeuser= userRepository.findById((long) user.getId()).orElseThrow(
	    		()->new ResourceNotFoundException("user","Id",""));;
	    		   Random r = new Random();
	    			
		int fourDigitCode = 1000 + r.nextInt(10000);
	    userRepository.addphonevercode(String.valueOf(fourDigitCode),"pending",user.getId());
	 String smsres = null;
		System.out.print(user.getEmail());
		
		if(existingeuser!=null)
		{
			String POST_PARAMS = "{\r\n" +
	                "  \"apikey\": \"7cad0a203f66336727cf78484b2d88aa\",\r\n" +
	                "  \"partnerID\": \"6460\",\r\n" +
	                "  \"mobile\": \"user.getPhone_number()\",\r\n" +
	                "  \"message\": \"String.valueOf(fourDigitCode)\",\r\n" +
	                "  \"shortcode\": \"FINTAB\",\r\n" +
	                "}";
		 MediaType JSON = MediaType.parse("application/json; charset=utf-8");
			  String BASE_URL = "https://api.metamug.com";
			    OkHttpClient client = new OkHttpClient();
			    String url="https://sms.textsms.co.ke/api/services/sendsms/";
			    RequestBody body = RequestBody.create(JSON, POST_PARAMS);
		        Request request = new Request.Builder().url(url).post(body).build();
		        try {
		        	Response response = client.newCall(request).execute();
		        	smsres= response.body().string();
		        }
		        catch (IOException e) {
					// TODO: handle exception
				}

	        

		
          
             
             return PhonVerResponse.builder().message(smsres).build();
             
             
            
			
		}
		else {
			
				throw new ResourceNotFoundException(smsres, "with id", "");
			
			
		}
			
		
		
		
	
	
	}
}
	

	


