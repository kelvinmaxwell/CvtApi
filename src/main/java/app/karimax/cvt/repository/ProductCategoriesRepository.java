package app.karimax.cvt.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import app.karimax.cvt.model.ProductCategories;

import app.karimax.cvt.model.ProductSubCategories;
import java.util.List;

public interface ProductCategoriesRepository extends JpaRepository<ProductCategories,Long> {
	@Query("select u from ProductSubCategories u WHERE u.product_category_id =?1")
	List<ProductSubCategories> getsubcategories(long categoryid);


}
