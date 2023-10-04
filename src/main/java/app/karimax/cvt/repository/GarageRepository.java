package app.karimax.cvt.repository;

import app.karimax.cvt.model.Garages;
import app.karimax.cvt.model.JobCard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GarageRepository  extends JpaRepository<Garages,Long> {

}
