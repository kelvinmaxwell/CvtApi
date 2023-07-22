package app.karimax.cvt.service.impl;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.Optional;

import org.aspectj.weaver.NewMemberClassTypeMunger;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.JSONArray;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.dao.request.MpesaRequestBody;
import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.AuthTokenResponse;
import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.MpesaPayments;
import app.karimax.cvt.repository.EmployeeRepository;
import app.karimax.cvt.repository.JobCardRepository;
import app.karimax.cvt.repository.JobCardServiceRepository;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.repository.MpesaPaymentsRepository;
import app.karimax.cvt.repository.MpesaReposotory;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.Mpesa1ResponseBody;
import app.karimax.cvt.service.MpesaGenAuth;
import app.karimax.cvt.service.MpesaService;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import ch.qos.logback.core.testUtil.NPEAppender;
import lombok.RequiredArgsConstructor;


@Service

public class MpesaImplementation implements MpesaService {
	private final MpesaReposotory mpesaReposotory;
	private final MpesaPaymentsRepository pMpesaPaymentsRepository;
	private final JobCardRepository jobCardRepository;
	private final JobCardServiceRepository jobCardServiceRepository;
	GetDate date=new GetDate("yyyy-MM-dd HH:mm");
	 
	public MpesaImplementation(JobCardServiceRepository jobCardServiceRepository,MpesaReposotory mpesaReposotory,MpesaPaymentsRepository pMpesaPaymentsRepository,JobCardRepository jobCardRepository) {
			super();
			this.mpesaReposotory = mpesaReposotory;
			this.pMpesaPaymentsRepository = pMpesaPaymentsRepository;
			this.jobCardRepository = jobCardRepository;
			this.jobCardServiceRepository = jobCardServiceRepository;
		}
	
	 @Override
	public Mpesa1ResponseBody sendrequest(PhoneRequest Prequest) {
		
	
		
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
		
	
		
		
		 mpesaRequestBody=MpesaRequestBody.builder().BusinessShortCode("174379").Password(lipapass(dateString)).Timestamp(dateString).TransactionType("CustomerPayBillOnline").Amount(Prequest.getAmount()).PartyA(Prequest.getPhone()).PartyB("174379").PhoneNumber(Prequest.getPhone()).CallBackURL("https://4de9-41-80-116-88.ngrok-free.app/api/v1/auth/safcallback").AccountReference("myacc").TransactionDesc("transa").build();
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
	    	Invoices savedInvoices;
	    	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");  
   		    Date  newdate = new Date();  
   		  Calendar calendar = Calendar.getInstance();
   		 calendar.setTime(newdate);
   		 
   		
   		 
   		
   		savedInvoices=   mpesaReposotory.getbyJobCard(Prequest.getJobcard());
   	 if(savedInvoices!=null) {
 		
 		
 		}
 		else {
 			Invoices invoices=new Invoices();
	    	invoices.setAmount(Prequest.getAmount());
	    	invoices.setJob_card_id(Prequest.getJobcard());
	    	invoices.setPaymentable_id(2);
	    	invoices.setReference("INV-"+new UUIDGeneratorLogic().generateID());
	    	invoices.setPaymentable_type("App\\Models\\MpesaPayment");
	    	invoices.setStatus("unpaid");
	    	invoices.setCreated_at(date.date());
	    	invoices.setUpdated_at(date.date());
	    	
	    	
	   savedInvoices= mpesaReposotory.save(invoices);
 		}
   	    
	     ;
	     MpesaPayments mp=new MpesaPayments();
	     mp.setInvoice_id(savedInvoices.getId());
	     mp.setMerchant_request_id(response.getBody().getMerchantRequestID());
	     mp.setCheckout_request_id(response.getBody().getCheckoutRequestID());
	     mp.setResult_code(Integer.parseInt(response.getBody().getResponseCode()));
	     mp.setResult_desc(response.getBody().getResponseDescription());
	     
	     
	   
	     
	     
	     pMpesaPaymentsRepository.save(mp);
	  
	  
	    	
	    	
	    	
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

	@Override
	public String savesafresponse(String body) {
		try {
			
		
		JSONObject jObject=new JSONObject(body);
		JSONObject bodycallback=jObject.getJSONObject("Body");
		JSONObject callbackObject=bodycallback.getJSONObject("stkCallback");
		String MerchantRequestID=callbackObject.getString("MerchantRequestID"); 
		String CheckoutRequestID=callbackObject.getString("CheckoutRequestID");
		String ResultCode=String.valueOf(callbackObject.getInt("ResultCode"));
		String ResultDesc=callbackObject.getString("ResultDesc");
		
		MpesaPayments mpesaPayments;
		
		
		
		mpesaPayments	=   pMpesaPaymentsRepository.getbymerchantid(MerchantRequestID);
		
	if(ResultCode.equalsIgnoreCase("0")) {
		JSONObject CallbackMetadata=callbackObject.getJSONObject("CallbackMetadata");
		org.json.JSONArray jitemArray=CallbackMetadata.getJSONArray("Item");
		
	String amountString=String.valueOf(jitemArray.getJSONObject(0).getFloat("Value"));
	String receiptnumber=jitemArray.getJSONObject(1).getString("Value");
	String transdate=String.valueOf(jitemArray.getJSONObject(3).getLong("Value"));
	String phone=String.valueOf(jitemArray.getJSONObject(4).getLong("Value"));
	
	
	 if(mpesaPayments!=null) {
		 String completedat=date.date();
		
		 mpesaPayments.setAmount(Double.valueOf(amountString));
			mpesaPayments.setMpesa_receipt_number(receiptnumber);
			mpesaPayments.setTransaction_date(transdate);
			mpesaPayments.setPhone_number(phone);
			mpesaPayments.setCreated_at(completedat);
			mpesaPayments.setUpdated_at(completedat);
			mpesaPayments.setResult_desc(ResultDesc);
			mpesaPayments=pMpesaPaymentsRepository.save(mpesaPayments);
			
			if(mpesaPayments!=null) {
				
			Invoices inv=mpesaReposotory.findbyinvid((long) mpesaPayments.getInvoice_id());
			inv.setStatus("paid");
			mpesaReposotory.save(inv);
			
			JobCard jcard=jobCardRepository.findByJobCardId(inv.getJob_card_id());
			jcard.setCompleted_at(completedat);
			jcard.setStatus("Done");
			jobCardRepository.save(jcard);
			
			Job_Card_Service jService=jobCardRepository.findByJobCard(String.valueOf(jcard.getId()));
			jService.setCompleted_at(completedat);
			
			jobCardServiceRepository.save(jService);
			
			
			
				
				
			}
		}
		else {
			
			
			
			
		}
	}
	else {
		Invoices inv=mpesaReposotory.findbyinvid((long) mpesaPayments.getInvoice_id());
		inv.setStatus("paid");
		mpesaReposotory.save(inv);
		
		JobCard jcard=jobCardRepository.findByJobCardId(inv.getJob_card_id());
		
		jcard.setStatus("failed");
		jobCardRepository.save(jcard);
		
		Job_Card_Service jService=jobCardRepository.findByJobCard(String.valueOf(jcard.getId()));
		
		
		jobCardServiceRepository.save(jService);
		
	}
		} catch (JSONException e) {
			// TODO: handle exception
		}
		
		return null;
	}

	@Override
	public JobCard getjobByID(long id) {
		JobCard jobstatus=jobCardRepository.findByJobCardId(String.valueOf(id)); 
		
		return jobstatus;
	}



}
