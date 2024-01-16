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
@Table(name = "pre_purchase_inspection_booking_requests")
public class PreInspectionRequest {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "customer_id")
    Integer  customer_id;
    @Column(name = "seller_name")
    String seller_name;
    @Column(name = "seller_phone_number")
    String seller_phone_number;
    @Column(name = "seller_location")
    String seller_location;

    @Column(name = "vehicle_model_id")
    Long vehicle_model_id;
    @Column(name = "status")
    String status;


    @Column(name = "garage_id")
    Integer garage_id;
    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Date updated_at;


}
