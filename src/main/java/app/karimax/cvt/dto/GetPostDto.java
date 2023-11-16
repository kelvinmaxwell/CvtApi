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
    private String username;
    private String content;
    private String created_at;
}
