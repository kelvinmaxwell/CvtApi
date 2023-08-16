package app.karimax.cvt.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_sub_categories")
public class ProductSubCategories {
	
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private long id;
	 
	 @Column(name = "name")
	String name;
	
	@Column(name = "product_category_id")
	long product_category_id;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getProduct_category_id() {
		return product_category_id;
	}
	public void setProduct_category_id(long product_category_id) {
		this.product_category_id = product_category_id;
	}


}
