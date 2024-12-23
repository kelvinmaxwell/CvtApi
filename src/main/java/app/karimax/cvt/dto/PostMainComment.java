// Post.java
package app.karimax.cvt.dto;

import jakarta.persistence.criteria.CriteriaBuilder;
import lombok.Data;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
@Data
public class PostMainComment {
    Integer id;
    Integer likes;
    String profile_photo_path;
    String user_summary;
    String email;
    Integer commentsNumber;
    Integer userId;
    private String username;
    private String content;
    private Integer commentCount;
    private Integer likeCount;


    private String created_at;
    private List<Comment> comments;







}
