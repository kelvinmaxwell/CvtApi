package app.karimax.cvt.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="forum_roles")
public class ForumRoles {

        @Id
        @GeneratedValue(strategy= GenerationType.IDENTITY)
        private long id;

        @Column(name="role_name",nullable=false)
        private String role_name;
}
