package app.karimax.cvt.model;

import java.util.Date;

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
@Table(name="pos_order_product")
public class Pos_order_product {

	 @Id
 @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private long id;
	int  pos_order_id;
	int  product_id;
	int quantity;
	Double  unit_price;
	Date created_at;
	Date updated_at;
	
}
