package app.karimax.cvt.config;

import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import app.karimax.cvt.dao.request.MpesaRequestBody;
import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.model.MpesaPayments;
import app.karimax.cvt.response.Mpesa1ResponseBody;
import app.karimax.cvt.service.MpesaGenAuth;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
@AllArgsConstructor

@NoArgsConstructor
public class initiateMpesaRequest {
	
 public	PhoneRequest Prequest;
	
	
	public Mpesa1ResponseBody sendrequest() {
		
		
		
		 SimpleDateFormat formatter
	     = new SimpleDateFormat ("yyyyMMddHHmmss");
	 Date currentTime_1 = new Date();
	 
	 String dateString = formatter.format(currentTime_1);
	 

		RestTemplate restTemplate = new RestTemplate();
		MpesaRequestBody mpesaRequestBody;
		
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		
		MpesaGenAuth kAuth=new MpesaGenAuth();
		String bearerString= kAuth.returnauth();
		String url
		  = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest";
		String reqstrng=null;
		
		
		HttpHeaders headers = new HttpHeaders();
		
	
		
		
		 mpesaRequestBody=MpesaRequestBody.builder().BusinessShortCode("174379").Password(lipapass(dateString)).Timestamp(dateString).TransactionType("CustomerPayBillOnline").Amount(Prequest.getAmount()).PartyA(Prequest.getPhone()).PartyB("174379").PhoneNumber(Prequest.getPhone()).CallBackURL("http://172.105.248.105:4000/api/v1/auth/safcallback").AccountReference("myacc").TransactionDesc("transa").build();
		 try {
			 reqstrng = objectMapper.writeValueAsString(mpesaRequestBody);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 headers.set("Content-Type","application/json");
		 headers.set("Authorization",bearerString);
		 
	    HttpEntity<String> request = new HttpEntity<>(reqstrng,headers);
		 
//		 HttpEntity request = new HttpEntity(headers);
	    ResponseEntity<Mpesa1ResponseBody> response = restTemplate.exchange(
	    	    url,
	    	    HttpMethod.POST,
	    	    request,
	    	    Mpesa1ResponseBody.class,
	    	    1
	    	);
	    
	    if(response.getBody().getResponseCode().equalsIgnoreCase("0")) {
//	    	Invoices savedInvoices;
//	    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");  
//  		    Date  newdate = new Date();  
//  		  Calendar calendar = Calendar.getInstance();
//  		 calendar.setTime(newdate);
//  		 
//  		
//  		 
//  		
//  		savedInvoices= mpesaReposotory.getbyJobCard(Prequest.getJobcard());
//  	 if(savedInvoices!=null) {
//		
//		
//		}
//		else {
//			Invoices invoices=new Invoices();
//	    	invoices.setAmount(Prequest.getAmount());
//	    	invoices.setJob_card_id(Prequest.getJobcard());
//	    	invoices.setPaymentable_id(2);
//	    	invoices.setReference("INV-"+new UUIDGeneratorLogic().generateID());
//	    	invoices.setPaymentable_type("App\\Models\\MpesaPayment");
//	    	invoices.setStatus("unpaid");
//	    	invoices.setCreated_at(date.date());
//	    	invoices.setUpdated_at(date.date());
//	    	
//	    	
//	   savedInvoices= mpesaReposotory.save(invoices);
//		}
//  	    
//	     ;
//	     MpesaPayments mp=new MpesaPayments();
//	     mp.setInvoice_id(savedInvoices.getId());
//	     mp.setMerchant_request_id(response.getBody().getMerchantRequestID());
//	     mp.setCheckout_request_id(response.getBody().getCheckoutRequestID());
//	     mp.setResult_code(Integer.parseInt(response.getBody().getResponseCode()));
//	     mp.setResult_desc(response.getBody().getResponseDescription());
//	     
//	     
//	   
//	     
//	     
//	     pMpesaPaymentsRepository.save(mp);
	  
	  
	    	
	    	
	    	
	    }
	    
	    
	
		return response.getBody();
		
	}
	
	public String lipapass(String dateformat) {
		
	String pass;
	 String passkey="bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919";
	 String businesscode="174379";
	
		pass=Base64.getEncoder().encodeToString((businesscode+passkey+dateformat).getBytes());
	
		
		return pass;
	}


}
