package app.karimax.cvt.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "mpesa_payments")
public class MpesaPayments {
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Integer id;
	int  invoice_id;
	String merchant_request_id;
	String checkout_request_id;
	int result_code;
	String result_desc;
	Double amount;
	String mpesa_receipt_number;
	String transaction_date;
	String phone_number;
	String created_at;
	String updated_at;
	
	
	
	
	

}
