package app.karimax.cvt.service;

import java.util.List;

import app.karimax.cvt.model.products;

public interface ProductsService {
	
	List<products> getproductsbymodel(Integer id);

}
