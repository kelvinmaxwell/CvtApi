package app.karimax.cvt.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class GetPostDto {

    Integer id;
    Integer likes;
    Integer liked;
    Integer dislike;

    Integer commentsNumber;
    Integer userId;
    String profile_photo_path;
    String user_summary;
    String email;
    private String username;
    private String content;
    private String created_at;
}
