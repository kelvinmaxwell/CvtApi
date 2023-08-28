package app.karimax.cvt.model;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name="pos_orders")
public class posOrders {
	
	
	
		
		 @Id
		    @GeneratedValue(strategy = GenerationType.IDENTITY)
		    private long id;
		String  reference;
		int  customer_id;
		int  garage_id;
		int paymentable_id;
		String  paymentable_type;
		String  status;
		int served_by;
		@Column(name = "amount",nullable = true)
		Double amount;
		Date created_at;
		Date updated_at;
		
		
		

	

}
