package app.karimax.cvt.dto;

import lombok.Data;

import java.util.List;


@Data
public class PostDto {
    List<String> imageBitmaps;
    String replacedHtml;
    Integer userId;
    Integer createdBy;
    Integer forumId;




}
