package app.karimax.cvt.dto;

import java.util.List;

public class SaveForumsDto {

    String forumName;
    String county;
    String summary;
    String description;
    String model;
    Integer isPrivate;
    Integer created_by;
    List<InviteUser> inviteUsers;

    public Integer getCreated_by() {
        return created_by;
    }

    public void setCreated_by(Integer created_by) {
        this.created_by = created_by;
    }

    public Integer getIsPrivate() {
        return isPrivate;
    }

    public void setIsPrivate(Integer isPrivate) {
        this.isPrivate = isPrivate;
    }

    public String getForumName() {
        return forumName;
    }

    public void setForumName(String name) {
        this.forumName = forumName;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public List<InviteUser> getInviteUsers() {
        return inviteUsers;
    }

    public void setInviteUsers(List<InviteUser> inviteUsers) {
        this.inviteUsers = inviteUsers;
    }
}
