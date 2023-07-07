package app.karimax.cvt.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SmsCall {
	String apikey;
	String partnerId;
	String message;
	String shortcode;
	
	

}
