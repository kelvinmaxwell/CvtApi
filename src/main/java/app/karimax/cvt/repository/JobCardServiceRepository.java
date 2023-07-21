package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import app.karimax.cvt.model.JobCard;
import app.karimax.cvt.model.Job_Card_Service;

public interface JobCardServiceRepository extends JpaRepository<Job_Card_Service,Long> {

}
