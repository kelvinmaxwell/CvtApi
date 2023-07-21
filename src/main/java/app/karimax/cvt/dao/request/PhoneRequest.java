package app.karimax.cvt.dao.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PhoneRequest {
	
	String phone;
	String amount;
	String jobcard;
	String jobcardservice;

}
