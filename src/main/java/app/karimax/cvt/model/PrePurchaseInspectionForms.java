package app.karimax.cvt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "pre_purchase_inspection_forms")
public class PrePurchaseInspectionForms {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "reference")
    private String reference;

    @Column(name = "title")
    private String title;


    @Column(name = "pre_inspection_service_price")
    private double preInspectionServicePrice;
    @ManyToOne
    @JoinColumn(name = "garage_id")
    private Garage garage;
//    @ManyToOne
//    @JoinColumn(name = "vehicle_model_id")
//    private VehicleModel vehicleModel;

    @Column(name = "status")
    private String status;

    @Column(name = "package")
    private String aPackage;

    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Date updated_at;
}
