package app.karimax.cvt.dto;

import lombok.Data;

import java.util.List;
@Data
public class SaveForumsDto {

    String forumName;
    String county;
    String summary;
    String description;
    String vehicle_model;
    Integer isPrivate;
    Integer created_by;
    List<InviteUser> inviteUsers;


}
