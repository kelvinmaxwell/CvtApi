package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.VehicleDetails;



public interface VehicleDetailsRepository extends JpaRepository<VehicleDetails,Long> {

}
