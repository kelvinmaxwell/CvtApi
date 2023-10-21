package app.karimax.cvt.service;

import java.util.List;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.ProductCategories;
import app.karimax.cvt.model.ProductSubCategories;
import app.karimax.cvt.model.products;

public interface ProductsService {
	
	List<products> getproductsbymodel(Integer id);
	
	List<products>getbysubcatmodel(long modelid,long subcatid);
	
	List<products>getbyoem(String oem);
	List<products>getbychasisno(String chasisno);
	
	List<ProductCategories> getproductcategories();
	
	List<ProductSubCategories> getsubcategories(long id);
	
	List<products> getbyid(long id);
	List<products> getproductbymanufacturer(long vmodelid,String name);

	ApiResponseDTO returnProductsCategories();

	ApiResponseDTO returnProductssubcategories(long id);

	ApiResponseDTO returnProductssubcategoriesproduct(long id);

	List<products> getbyproductName(String productName);


}
