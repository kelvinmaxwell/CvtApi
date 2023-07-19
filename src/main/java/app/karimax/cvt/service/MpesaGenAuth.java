package app.karimax.cvt.service;


import static org.hamcrest.CoreMatchers.nullValue;

import java.io.IOException;
import java.util.Base64;


import com.google.gson.Gson;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import app.karimax.cvt.model.AuthTokenResponse;

public class MpesaGenAuth {
	
	
	public AuthTokenResponse returnauth() {
		
		
		String authString=null;
		OkHttpClient client = new OkHttpClient();
		Request request = new Request.Builder()
		  .url("https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials")
		  .method("GET", null)
		  .addHeader("Authorization", getBasicAuthenticationHeader("GITF3TWnSiLU8xGGKTcck1ft04GiWmu5","WAid5kKZZnMAS28G"))
		  .build();
		
		
		Response response = null;
	
		try {
			response = client.newCall(request).execute();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print("safaricom response"+response.body().toString());
		
		AuthTokenResponse outputList=null;
//		Gson gson = new Gson();
//	   AuthTokenResponse outputList = gson.fromJson(response.toString(),AuthTokenResponse.class);
//		
		return outputList;
		
	}
	
	
	private static final String getBasicAuthenticationHeader(String username, String password) {
	    String valueToEncode = username + ":" + password;
	    return "Basic " + Base64.getEncoder().encodeToString(valueToEncode.getBytes());
	}

}
