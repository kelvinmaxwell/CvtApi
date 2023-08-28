package app.karimax.cvt.dao.request;

import java.util.Date;
import java.util.List;

import app.karimax.cvt.model.Pos_order_product;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class productSaveRequest {

	
	List<Pos_order_product>  orderdetails;
	
	int customer_id ;
	int garage_id;
	Date created_at;
	Date updated_at;
	String  phone;
	
	String amount;
	
	
	
	
	
}
