package app.karimax.cvt.response;

import com.fasterxml.jackson.annotation.JsonProperty;

import app.karimax.cvt.model.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Mpesa1ResponseBody {
	
	@JsonProperty("MerchantRequestID")
	String MerchantRequestID;
	@JsonProperty("CheckoutRequestID")
	String CheckoutRequestID;
	@JsonProperty("ResponseCode")
	String ResponseCode;
	@JsonProperty("ResponseDescription")
	String ResponseDescription;
	@JsonProperty("CustomerMessage")
	String CustomerMessage;
	
	

}
