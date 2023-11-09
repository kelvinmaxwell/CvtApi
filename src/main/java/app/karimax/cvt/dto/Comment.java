// Comment.java
package app.karimax.cvt.dto;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;
@Data
public class Comment {
    Integer id;
    Integer likes;

    Integer commentsNumber;
    private String username;
    private String content;
    private List<Comment> replies;
    private String created_at;

    private Integer likeCount;
}
