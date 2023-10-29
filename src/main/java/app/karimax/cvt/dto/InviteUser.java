package app.karimax.cvt.dto;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class InviteUser {
    Integer position;
    String email;
    String role;
    String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getPosition() {
        return position;
    }

    public void setPosition(Integer position) {
        this.position = position;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }


    public  List<InviteUser> removeDuplicates(List<InviteUser> inviteUsers) {
        HashSet<String> uniqueEmails = new HashSet<>();
        Iterator<InviteUser> iterator = inviteUsers.iterator();

        while (iterator.hasNext()) {
            InviteUser inviteUser = iterator.next();
            String email = inviteUser.getEmail();

            // If the email is already in the set, remove the duplicate
            if (!uniqueEmails.add(email)) {
                iterator.remove();
            }
        }

        return inviteUsers;
    }
}
