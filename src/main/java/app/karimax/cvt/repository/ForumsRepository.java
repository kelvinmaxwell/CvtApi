package app.karimax.cvt.repository;

import app.karimax.cvt.model.ForumRoles;
import app.karimax.cvt.model.Forums;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ForumsRepository    extends JpaRepository<Forums,Long> {

    List<Forums> findForumsByName(String name);
}
