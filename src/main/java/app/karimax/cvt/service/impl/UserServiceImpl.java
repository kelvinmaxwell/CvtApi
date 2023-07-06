package app.karimax.cvt.service.impl;

import java.util.Optional;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    @Override
    public UserDetailsService userDetailsService() {
        return new UserDetailsService() {
            @Override
            public UserDetails loadUserByUsername(String username) {
                return userRepository.findByEmail(username)
                        .orElseThrow(() -> new UsernameNotFoundException("User not found"));
            }
        };
    }
	@Override
	public User getbyEmailapp(String email) {
		User user=userRepository.getbyEmailapp(email);
		if(user!=null) {
		return user;
		
		}
		else {
			throw new ResourceNotFoundException("UserNotFound","name",email);
		}
	}
	@Override
	public User findByphone(String phone) {
		User user=userRepository.findByPhone_number(phone);
		if(user!=null) {
		return user;
		
		}
		else {
			throw new ResourceNotFoundException("User Not Found","","");
		}
	}
	@Override
	public PhonVerResponse phonever(User user) {
		// TODO Auto-generated method stub
		return null;
	}

}
