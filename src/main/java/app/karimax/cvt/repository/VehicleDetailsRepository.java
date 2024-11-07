package app.karimax.cvt.repository;

import app.karimax.cvt.model.Vehicles;
import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.VehicleDetails;
import org.springframework.data.jpa.repository.Query;


public interface VehicleDetailsRepository extends JpaRepository<VehicleDetails,Long> {

    @Query("SELECT vd  FROM  VehicleDetails vd WHERE vd.vehicle_registration_plate = ?1")
    VehicleDetails findVehicleBYRegistrationNumber(String   vehicleRegistration);

}
