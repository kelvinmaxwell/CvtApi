package app.karimax.cvt.repository;

import app.karimax.cvt.model.Posts;
import app.karimax.cvt.model.ProductCategories;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostsRepository extends JpaRepository<Posts,Long> {
}
