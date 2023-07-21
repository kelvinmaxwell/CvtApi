package app.karimax.cvt.service;

import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.model.Invoices;
import app.karimax.cvt.response.Mpesa1ResponseBody;

public interface MpesaService {
	
	Mpesa1ResponseBody sendrequest(PhoneRequest Prequest);
	
	String savesafresponse(String body);

}
