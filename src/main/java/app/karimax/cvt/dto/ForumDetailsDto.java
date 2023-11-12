package app.karimax.cvt.dto;

import lombok.Data;

@Data
public class ForumDetailsDto {

    Integer forumId;
    String name;
    String summary;
    Integer followers;
    Integer posts;
}
