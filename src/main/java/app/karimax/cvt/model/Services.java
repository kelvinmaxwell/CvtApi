package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "services")
public class Services {
    @Column(name = "name")
    String name;
    @Column(name = "package")
    String packageName;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "service_category_id")
    private ServiceCategory serviceCategory;
    @ManyToOne
    @JoinColumn(name = "garage_id")
    private Garage garage;

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
