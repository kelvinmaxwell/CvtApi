package app.karimax.cvt.mapper;

import java.util.ArrayList;
import java.util.List;

import app.karimax.cvt.model.products;

public class ProductsMapper {
	
	List<Object[]> resultList;
	
	public List<products> mapproducts()
	{
	
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
		return  productsdto;
		 }
		 else {
			 {
				 return  productsdto;
			 }
		}
	}

	public ProductsMapper(List<Object[]> resultList) {
		super();
		this.resultList = resultList;
	}
	

}
