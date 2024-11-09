package app.karimax.cvt.Serviceimpl;


import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.SmsCall;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;


@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final Configs configs;
    private final MechanicRepository mechanicRepository;


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
    public ApiResponseDTO getbyEmailapp(String email) {
        User user = userRepository.getbyEmailapp(email);
        if (user != null) {
            return new SuccessResponseHandler(configs, user).SuccResponse();

        } else {
            return new ErrorExceptionHandler(configs, configs.getNotFoundStatusDesc()).ErrorResponseNotFound();
        }
    }

    @Override
    public ApiResponseDTO findByphone(String phone) {
        User user = userRepository.findByPhone_number(phone);
        if (user != null) {
            return new SuccessResponseHandler(configs, user).SuccResponse();

        } else {
            return new ErrorExceptionHandler(configs, configs.getNotFoundStatusDesc()).ErrorResponseNotFound();
        }
    }

    @Override
    public PhonVerResponse addvercode(User user) {
        User existingeuser = userRepository.findById((long) user.getId()).orElseThrow(
                () -> new ResourceNotFoundException("user", "Id", ""));
        ;
        Random r = new Random();


        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date expires_at = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(expires_at);
        calendar.add(Calendar.HOUR_OF_DAY, 1);

        String fourDigitCode = String.format("%04d", Integer.valueOf(r.nextInt(1001)));
        ;
        userRepository.addphonevercode(String.valueOf(fourDigitCode), calendar.getTime(), user.getId());
        String smsres = null;
        System.out.print(user.getEmail());

        if (existingeuser != null) {

            RestTemplate restTemplate = new RestTemplate();

            String resourceUrl
                    = "https://sms.textsms.co.ke/api/services/sendsms/";

            // Create the request body by wrapping
            // the object in HttpEntity
            HttpEntity<SmsCall> request = new HttpEntity<SmsCall>(
                    new SmsCall("7cad0a203f66336727cf78484b2d88aa", "6460", existingeuser.getPhone_number(), "<#> Your otp code is : " + String.valueOf(fourDigitCode) + " svvQbds15hc", "FINTAB"));

            // Send the request body in HttpEntity for HTTP POST request
            String productCreateResponse = restTemplate
                    .postForObject(resourceUrl, request, String.class);

            JSONObject obj = new JSONObject(productCreateResponse);
            JSONArray projectNameArray = obj.getJSONArray("responses");

            JSONObject single = projectNameArray.getJSONObject(0);
            int responseCode = (single.getInt("response-code"));

            if (responseCode == 200) {


            }


            return PhonVerResponse.builder().message(String.valueOf(responseCode)).build();


        } else {

            throw new ResourceNotFoundException(smsres, "with id", "");


        }


    }

    @Override
    public PhonVerResponse confirmcode(User user) {
        System.out.println("output" + user.getId() + user.getOtp_code());
        User existingeuser = userRepository.verifycode(user.getId(), user.getOtp_code());
        if (existingeuser != null) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();

            int updated = userRepository.setupdated(formatter.format(date), user.getId());

            if (updated == 1) {
                return PhonVerResponse.builder().message("number_verified").build();
            } else {
                throw new ResourceNotFoundException("user", "Id", "");
            }

        } else {
            throw new ResourceNotFoundException("user", "Id", "");
        }


    }

}
	

	


