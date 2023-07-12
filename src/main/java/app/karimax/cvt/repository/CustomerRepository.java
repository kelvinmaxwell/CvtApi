package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.User;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
