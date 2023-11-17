package app.karimax.cvt.model;

import app.karimax.cvt.dto.UpdateForumDto;
import jakarta.persistence.*;
import lombok.Data;

import java.sql.Date;

@Data
@Entity
@Table(name="forums")
public class Forums {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private long id;

    @Column(name="reference",nullable=false)
    private String reference;

    @Column(name="name",nullable=false)
    private String forumName;

    @Column(name="image",nullable=true)
    private String image;

    @Column(name="vehicle_model",nullable=true)
    private String vehicle_model;

    @Column(name="summary",nullable=false)
    private String summary;

    @Column(name="description",nullable=false)
    private String description;
    @Column(name="created_at",nullable=false)
    private Date created_at;

    @Column(name="updated_at",nullable=true)
    private Date updated_by;

    @Column(name="created_by",nullable=false)
    private Integer created_by;
    @Column(name="is_private",nullable=false)
    private Integer is_private;


    public void setValuesFromUpdateForumDto(UpdateForumDto updateForumDto) {
        this.id = updateForumDto.getId();
        this.reference = updateForumDto.getReference();
        this.forumName = updateForumDto.getForumName();
        this.image = updateForumDto.getImage();
        this.vehicle_model = updateForumDto.getVehicle_model();
        this.summary = updateForumDto.getSummary();
        this.description = updateForumDto.getDescription();
        this.created_at = updateForumDto.getCreated_at();
        this.created_by = updateForumDto.getCreated_by();
        this.is_private = updateForumDto.getIs_private();
    }




}
