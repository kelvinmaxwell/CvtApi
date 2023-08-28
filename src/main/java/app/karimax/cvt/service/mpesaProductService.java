package app.karimax.cvt.service;

import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.dao.request.productSaveRequest;
import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.posOrders;
import app.karimax.cvt.response.Mpesa1ResponseBody;

public interface mpesaProductService {

	
    Mpesa1ResponseBody sendrequest(productSaveRequest Prequest);
	
	String savesafresponseproduct(String body);
	
	int completepurchase(productSaveRequest Prequest);
}
