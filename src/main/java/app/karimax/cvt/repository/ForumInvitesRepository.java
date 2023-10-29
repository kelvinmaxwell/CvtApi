package app.karimax.cvt.repository;

import app.karimax.cvt.model.ForumInvites;
import app.karimax.cvt.model.Forums;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ForumInvitesRepository   extends JpaRepository<ForumInvites,Long> {
}
