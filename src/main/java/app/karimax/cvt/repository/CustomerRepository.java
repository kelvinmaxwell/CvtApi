package app.karimax.cvt.repository;

import app.karimax.cvt.model.Vehicles;
import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.Customer;
import app.karimax.cvt.model.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CustomerRepository extends JpaRepository<Customer, Long> {




}
