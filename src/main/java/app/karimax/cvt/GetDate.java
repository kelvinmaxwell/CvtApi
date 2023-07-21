package app.karimax.cvt;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import app.karimax.cvt.model.Invoices;

public class GetDate {
	String dateformatString;
	public GetDate(String dateformatString) {
		super();
		this.dateformatString = dateformatString;
	}
	public String date() {
		Invoices savedInvoices;
    	SimpleDateFormat format = new SimpleDateFormat(dateformatString);  
		    Date  newdate = new Date();  
		  Calendar calendar = Calendar.getInstance();
		 calendar.setTime(newdate);
		
		return format.format(calendar.getTime());
		
		
	}

}
