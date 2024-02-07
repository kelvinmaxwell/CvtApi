package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

import java.sql.Date;
@Data
public class UpdateForumDto {
    ForumProfileImages forumProfileImages;


    private long id;


    private String reference;


    private String forumName;


    private String image;


    private String vehicle_model;


    private String summary;


    private String description;

    private Date created_at;


    private Integer updated_by;


    private Integer created_by;

    private Integer is_private;
}
