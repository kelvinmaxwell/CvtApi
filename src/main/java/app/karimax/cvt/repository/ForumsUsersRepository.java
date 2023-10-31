package app.karimax.cvt.repository;

import app.karimax.cvt.model.ForumUsers;
import app.karimax.cvt.model.Forums;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ForumsUsersRepository   extends JpaRepository<ForumUsers,Long> {
}
