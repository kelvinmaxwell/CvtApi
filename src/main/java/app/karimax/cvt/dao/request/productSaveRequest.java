package app.karimax.cvt.dao.request;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import app.karimax.cvt.model.Pos_order_product;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class productSaveRequest {

	
	List<Pos_order_product>  orderdetails;
	
	int customer_id ;
	int garage_id;
	
	@DateTimeFormat (pattern = "Yyyy-mm-dd HH:mm:ss")
    @JsonFormat (pattern = "Yyyy-mm-dd HH:mm:ss")
	Date created_at;
	@DateTimeFormat (pattern = "Yyyy-mm-dd HH:mm:ss")
    @JsonFormat (pattern = "Yyyy-mm-dd HH:mm:ss")
	Date updated_at;
	String  phone;
	
	String amount;
	
	
	
	
	
}
