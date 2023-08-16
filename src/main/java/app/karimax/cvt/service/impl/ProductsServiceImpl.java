package app.karimax.cvt.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.products;
import app.karimax.cvt.repository.JobCardRepository;
import app.karimax.cvt.repository.ProductsRepository;
import app.karimax.cvt.service.ProductsService;
@Service
public class ProductsServiceImpl implements ProductsService {
	
	
	private ProductsRepository productsRepository;
	  
	GetDate date=new GetDate("yyyy-MM-dd HH:mm");
	public ProductsServiceImpl(ProductsRepository productsRepository) {
		super();
		this.productsRepository = productsRepository;
	}
	@Override
	public List<products> getproductsbymodel(Integer id) {
	
		List<Object[]> resultList=productsRepository.getproductsbymodel(id);
		 List<products> productsdto = new ArrayList<>();
		 
		 if(!resultList.isEmpty()) {
	        
	        for (Object[] row : resultList) {
	        	products dto = new products();
	        	 Long k= (Long)row[0];  
		            int m=k.intValue(); 
	            dto.setVehicle_model_id(m);
	            dto.setBrand((String) row[1]);
	            dto.setModel_name((String) row[2]);
	            dto.setEngine_capacity((Integer) row[3]);
	            dto.setYear_of_manufacture((String) row[4]);
	            dto.setManufacturer((String) row[5]);
	            dto.setSelling_price((Double) row[6]);
	            dto.setPart_name((String) row[7]);
	            
	            
	            Long l= (Long)row[8];  
	            int i=l.intValue();  
	            
	            dto.setProduct_id(i);
	            dto.setChasis_no((String) row[9]);
	            dto.setOem((String) row[10]);
	            productsdto.add(dto);
	        }
	        return productsdto;
		 }
		 else {
			 throw new ResourceNotFoundException("File Not Find","error",id);
		}
	        
	      
		
		
	}

}
