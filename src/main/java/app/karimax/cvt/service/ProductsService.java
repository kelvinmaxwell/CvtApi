package app.karimax.cvt.service;

import java.util.List;

import app.karimax.cvt.model.ProductCategories;
import app.karimax.cvt.model.ProductSubCategories;
import app.karimax.cvt.model.products;

public interface ProductsService {
	
	List<products> getproductsbymodel(Integer id);
	
	List<products>getbysubcatmodel(long modelid,long subcatid);
	
	List<ProductCategories> getproductcategories();
	
	List<ProductSubCategories> getsubcategories(long id);

}
