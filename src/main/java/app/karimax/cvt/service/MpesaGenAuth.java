package app.karimax.cvt.service;




import java.util.Base64;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.google.gson.Gson;


import app.karimax.cvt.model.AuthTokenResponse;

public class MpesaGenAuth {
	
	
	public String returnauth() {
		
		RestTemplate restTemplate = new RestTemplate();
		String url
		  = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials";
		
		
		HttpHeaders headers = new HttpHeaders();
		
		 headers.set("Accept", "application/json");
		 headers.set("Authorization", getBasicAuthenticationHeader("TmSdiHJFCFHx27rNFfArgZiJsS4GFpC4", "oc9dkBkh09RpUWdb"));
		 HttpEntity request = new HttpEntity(headers);
//	    HttpEntity<String> httpEntity = new HttpEntity<>("some body", headers);
	    ResponseEntity<AuthTokenResponse> response = restTemplate.exchange(
	    	    url,
	    	    HttpMethod.GET,
	    	    request,
	    	    AuthTokenResponse.class,
	    	    1
	    	);
		System.out.print("test response"+response.getBody().getAccess_token());
		
//		
		return "Bearer "+response.getBody().getAccess_token();
		
	}
	
	
	public  final String getBasicAuthenticationHeader(String username, String password) {
	    String valueToEncode = username + ":" + password;
	    return "Basic " + Base64.getEncoder().encodeToString(valueToEncode.getBytes());
	}

}
