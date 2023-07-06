package app.karimax.cvt.response;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PhonVerResponse {
	
	    private String message;
	    private String token;
	    private String email;
	    private int id;
	    private String phone;
	    
	    
	
}
