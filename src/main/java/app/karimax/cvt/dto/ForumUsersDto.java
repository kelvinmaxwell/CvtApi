package app.karimax.cvt.dto;

import jakarta.persistence.Column;
import lombok.Data;

import java.sql.Date;
@Data
public class ForumUsersDto {
    Integer id;

    Integer user_id;

    Integer roles_id;

    Integer is_terms_agreed;

    Integer receive_forum_notifications;
    Integer forum_id;


}
