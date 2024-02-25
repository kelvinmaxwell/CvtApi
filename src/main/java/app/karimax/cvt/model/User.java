package app.karimax.cvt.model;

import static org.hamcrest.CoreMatchers.nullValue;

import java.sql.Timestamp;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
  
   
    private String email;
  
    private String phone_number;
    private String password;
    private String otp_code;
    public String username;
    public String user_summary;
    public String profile_photo_path;
    private String otp_code_expires_at;
    private String otp_verified_at;
    
    
    @Column(name = "created_at")
    private Timestamp created_at;
    @Column(name = "updated_at")
    private Timestamp updated_at;

    private String userable_type;
    @Column(name = "userable_id")
    private long userable_id;
  
    
//    
//    @Enumerated(EnumType.STRING)
//    private Role role;
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
//        return List.of(new SimpleGrantedAuthority(role.name()));
    	return null;
    }

    @Override
    public String getUsername() {
        // email in our case
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
