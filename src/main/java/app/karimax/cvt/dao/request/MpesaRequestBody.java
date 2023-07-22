package app.karimax.cvt.dao.request;

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
public class MpesaRequestBody {
	@JsonProperty("BusinessShortCode")
	String  BusinessShortCode;
	@JsonProperty("Password")
	String  Password;
	@JsonProperty("Timestamp")
	String  Timestamp;
	@JsonProperty("TransactionType")
	String  TransactionType;
	@JsonProperty("Amount")
	String  Amount;
	@JsonProperty("PartyA")
	String  PartyA;
	@JsonProperty("PartyB")
	String  PartyB;
	@JsonProperty("PhoneNumber")
	String  PhoneNumber;
	@JsonProperty("CallBackURL")
	String  CallBackURL;
	@JsonProperty("AccountReference")
	String  AccountReference;
	@JsonProperty("TransactionDesc")
	String  TransactionDesc;
	
	

}
