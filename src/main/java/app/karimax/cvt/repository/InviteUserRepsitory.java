package app.karimax.cvt.repository;

import app.karimax.cvt.dto.InviteUser;
import app.karimax.cvt.model.ForumInvites;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface InviteUserRepsitory  extends JpaRepository<ForumInvites,Long> {


    @Query("select  ui from ForumInvites ui where ui.sending_status=0")
    List<ForumInvites> findunsentmessages();
}
