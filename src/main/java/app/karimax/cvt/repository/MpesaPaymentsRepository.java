package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import app.karimax.cvt.model.MpesaPayments;

public interface MpesaPaymentsRepository extends JpaRepository<MpesaPayments,Long> {
	@Query("select u from MpesaPayments u WHERE u.merchant_request_id =?1")
	MpesaPayments getbymerchantid(String merchantRequestID);
}
