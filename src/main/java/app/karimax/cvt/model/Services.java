package app.karimax.cvt.model;

import jakarta.persistence.*;
import jakarta.persistence.criteria.CriteriaBuilder;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data

@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "services")
public class Services {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "name")
    String name;
    @Column(name = "service_category_id")
    Integer service_category_id;
    @Column(name = "package")
    String packageName;

    @Column(name = "garage_id")
    private Integer garage_id;

    @Column(name = "price")
    private Double price;

    @Column(name = "created_by")
    private Integer created_by;
    @Column(name = "updated_by")
    private Integer updated_by;

    @Column(name = "created_at")
    private Date created_at;
    @Column(name = "updated_at")
    private Date updated_at;

    @Column(name = "deleted_at")
    private Date deleted_at;


}
