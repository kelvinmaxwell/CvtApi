package app.karimax.cvt.service.impl;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.hibernate.bytecode.internal.bytebuddy.PrivateAccessorException;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.dao.request.MpesaRequestBody;
import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.dao.request.productSaveRequest;
import app.karimax.cvt.model.Garage_product;
import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;
import app.karimax.cvt.model.MpesaPayments;
import app.karimax.cvt.model.Pos_order_product;
import app.karimax.cvt.model.posOrders;
import app.karimax.cvt.repository.Garage_productRepository;
import app.karimax.cvt.repository.JobCardRepository;
import app.karimax.cvt.repository.JobCardServiceRepository;
import app.karimax.cvt.repository.MpesaPaymentsRepository;
import app.karimax.cvt.repository.MpesaReposotory;
import app.karimax.cvt.repository.PosOrderProductRepository;
import app.karimax.cvt.repository.PosOrderRepository;
import app.karimax.cvt.response.Mpesa1ResponseBody;

import app.karimax.cvt.service.MpesaGenAuth;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import app.karimax.cvt.service.mpesaProductService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class mpesaProductServiceImpl implements mpesaProductService {

	private final MpesaPaymentsRepository pMpesaPaymentsRepository;
	private final PosOrderProductRepository posOrderProductRepository;
	private final PosOrderRepository posOrderRepository;
	private final Garage_productRepository garage_productRepository;


	GetDate date = new GetDate("yyyy-MM-dd HH:mm");

	@Override
	public Mpesa1ResponseBody sendrequest(productSaveRequest Prequest) {
		boolean isPresentString = false;
		List<Pos_order_product> pos_order_product = Prequest.getOrderdetails();

		if (!pos_order_product.isEmpty()) {

			for (int i = 0; i < pos_order_product.size(); i++) {
				Garage_product garage_product = garage_productRepository.findByGradgeProduct(Prequest.getGarage_id(),
						pos_order_product.get(i).getProduct_id());

				if (garage_product.getQuantity() >= pos_order_product.get(i).getQuantity()) {

					isPresentString = true;
				}

			}
		}
		if (isPresentString) {

			

			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			Date currentTime_1 = new Date();

			String dateString = formatter.format(currentTime_1);

			RestTemplate restTemplate = new RestTemplate();
			MpesaRequestBody mpesaRequestBody;

			ObjectMapper objectMapper = new ObjectMapper();

			MpesaGenAuth kAuth = new MpesaGenAuth();
			String bearerString = kAuth.returnauth();
			String url = "https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest";
			String reqstrng = null;

			HttpHeaders headers = new HttpHeaders();

			mpesaRequestBody = MpesaRequestBody.builder().BusinessShortCode("174379").Password(lipapass(dateString))
					.Timestamp(dateString).TransactionType("CustomerPayBillOnline").Amount(Prequest.getAmount())
					.PartyA(Prequest.getPhone()).PartyB("174379").PhoneNumber(Prequest.getPhone())
					.CallBackURL("https://3bea-41-60-239-70.ngrok-free.app/api/v1/auth/safcallbackproducts")
					.AccountReference("myacc").TransactionDesc("transa").build();
			try {
				reqstrng = objectMapper.writeValueAsString(mpesaRequestBody);
				System.out.print("error in body");
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block

				e.printStackTrace();
			}
			headers.set("Content-Type", "application/json");
			headers.set("Authorization", bearerString);

			HttpEntity<String> request = new HttpEntity<>(reqstrng, headers);

//		 HttpEntity request = new HttpEntity(headers);
			ResponseEntity<Mpesa1ResponseBody> response = restTemplate.exchange(url, HttpMethod.POST, request,
					Mpesa1ResponseBody.class, 1);

			if (response.getBody().getResponseCode().equalsIgnoreCase("0")) {

				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
				Date newdate = new Date();
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(newdate);

				posOrders posOrders = new posOrders();
				posOrders.setAmount(Double.valueOf(Prequest.getAmount()));
				posOrders.setCustomer_id(Prequest.getCustomer_id());
				posOrders.setPaymentable_id(2);
				posOrders.setReference("pos-" + new UUIDGeneratorLogic().generateID());
				posOrders.setPaymentable_type("App\\Models\\MpesaPayment");
				posOrders.setStatus("unpaid");
				posOrders.setCreated_at(date.gdate());
				posOrders.setUpdated_at(date.gdate());

				posOrders = posOrderRepository.save(posOrders);
				
				for (int i = 0; i < pos_order_product.size(); i++) {

					Garage_product garage_product = garage_productRepository.findByGradgeProduct(Prequest.getGarage_id(),
							pos_order_product.get(i).getProduct_id());
					
					pos_order_product.get(i).setPos_order_id((int) posOrders.getId());
					pos_order_product.get(i).setCreated_at(newdate);
					pos_order_product.get(i).setUpdated_at(newdate);
					garage_product.setQuantity(garage_product.getQuantity() - pos_order_product.get(i).getQuantity());

					garage_productRepository.save(garage_product);

				}

				
				
				posOrderProductRepository.saveAll(pos_order_product);
				
				MpesaPayments mp = new MpesaPayments();
				mp.setInvoice_id(0);
				mp.setPos_orders_id((int) posOrders.getId());
				mp.setMerchant_request_id(response.getBody().getMerchantRequestID());
				mp.setCheckout_request_id(response.getBody().getCheckoutRequestID());
				mp.setResult_code(Integer.parseInt(response.getBody().getResponseCode()));
				mp.setResult_desc(response.getBody().getResponseDescription());

				pMpesaPaymentsRepository.save(mp);
				response.getBody().setOrderId(posOrders.getId());

			}
			else {
				
				for (int i = 0; i < pos_order_product.size(); i++) {

					Garage_product garage_product = garage_productRepository.findByGradgeProduct(Prequest.getGarage_id(),
							pos_order_product.get(i).getProduct_id());

					garage_product.setQuantity(garage_product.getQuantity() + pos_order_product.get(i).getQuantity());

					garage_productRepository.save(garage_product);

				}

				
			}
			response.getBody().setCustomerMessage("1");

			return response.getBody();

		} else {
			Mpesa1ResponseBody mpesa1ResponseBody = new Mpesa1ResponseBody();
			mpesa1ResponseBody.setCustomerMessage("Out of stock products");
			return mpesa1ResponseBody;

		}

	}

	public String lipapass(String dateformat) {

		String pass;
		String passkey = "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919";
		String businesscode = "174379";

		pass = Base64.getEncoder().encodeToString((businesscode + passkey + dateformat).getBytes());

		return pass;
	}

	@Override
	public String savesafresponseproduct(String body) {
		try {

			JSONObject jObject = new JSONObject(body);
			JSONObject bodycallback = jObject.getJSONObject("Body");
			JSONObject callbackObject = bodycallback.getJSONObject("stkCallback");
			String MerchantRequestID = callbackObject.getString("MerchantRequestID");
			String CheckoutRequestID = callbackObject.getString("CheckoutRequestID");
			String ResultCode = String.valueOf(callbackObject.getInt("ResultCode"));
			String ResultDesc = callbackObject.getString("ResultDesc");

			MpesaPayments mpesaPayments;

			mpesaPayments = pMpesaPaymentsRepository.getbymerchantid(MerchantRequestID);

			if (ResultCode.equalsIgnoreCase("0")) {
				JSONObject CallbackMetadata = callbackObject.getJSONObject("CallbackMetadata");
				org.json.JSONArray jitemArray = CallbackMetadata.getJSONArray("Item");

				String amountString = String.valueOf(jitemArray.getJSONObject(0).getFloat("Value"));
				String receiptnumber = jitemArray.getJSONObject(1).getString("Value");
				String transdate = String.valueOf(jitemArray.getJSONObject(3).getLong("Value"));
				String phone = String.valueOf(jitemArray.getJSONObject(4).getLong("Value"));

				if (mpesaPayments != null) {
					String completedat = date.date();

					mpesaPayments.setAmount(Double.valueOf(amountString));
					mpesaPayments.setMpesa_receipt_number(receiptnumber);
					mpesaPayments.setTransaction_date(transdate);
					mpesaPayments.setPhone_number(phone);
					mpesaPayments.setCreated_at(completedat);
					mpesaPayments.setUpdated_at(completedat);
					mpesaPayments.setResult_desc(ResultDesc);
					mpesaPayments = pMpesaPaymentsRepository.save(mpesaPayments);

					if (mpesaPayments != null) {

						List<posOrders> posOrders = posOrderRepository.findById(mpesaPayments.getPos_orders_id());
						try {
							posOrders posOrders2 = posOrders.get(0);
							posOrders2.setStatus("paid");
							posOrders2.setServed_by(0);
							posOrderRepository.save(posOrders2);

						} catch (Exception e) {
							// TODO: handle exception
						}

					}
				} else {

				}
			} else {
				List<posOrders> posOrders = posOrderRepository.findById(mpesaPayments.getPos_orders_id());
				
				
			MpesaPayments mpesaPayments2=pMpesaPaymentsRepository.getbymerchantid(MerchantRequestID);
			
			List<Pos_order_product> pos_order_products=posOrderProductRepository.findByPos_order_id(mpesaPayments2.getPos_orders_id());
			List<posOrders> garage_products=posOrderRepository.findById(mpesaPayments2.getPos_orders_id());
			
			
			for (int i = 0; i < pos_order_products.size(); i++) {

				Garage_product garage_product = garage_productRepository.findByGradgeProduct(garage_products.get(0).getGarage_id(),
						pos_order_products.get(i).getProduct_id());

				garage_product.setQuantity(garage_product.getQuantity() + pos_order_products.get(i).getQuantity());

				garage_productRepository.save(garage_product);

			}
			
				try {
					posOrders posOrders2 = posOrders.get(0);
					posOrders2.setStatus("failed");
					posOrders2.setServed_by(0);
					posOrderRepository.save(posOrders2);

				} catch (Exception e) {
					// TODO: handle exception
				}

			}
		} catch (JSONException e) {
			// TODO: handle exception
		}

		return null;
	}

	@Override
	public int completepurchase(productSaveRequest Prequest) {
		if (Prequest != null) {
			List<Pos_order_product> orderdetails = new ArrayList<>();
			posOrderProductRepository.saveAll(orderdetails);
			return posOrderProductRepository.saveAll(orderdetails).size();
		} else {

			return 0;
		}

		// TODO Auto-generated method stub

	}

	@Override
	public posOrders getPaymentStatus(String mearcherantrequest) {
		
		MpesaPayments mpesaPayments;
		mpesaPayments = pMpesaPaymentsRepository.getbymerchantid(mearcherantrequest);
		
		if (mpesaPayments != null) {

			List<posOrders> posOrders = posOrderRepository.findById(mpesaPayments.getPos_orders_id());
			try {
				posOrders posOrders2 = posOrders.get(0);
				
return posOrders2;
			} catch (Exception e) {
				return null;
				// TODO: handle exception
			}

		
	} else {
		return null;
	}
		
	}

}
