package app.karimax.cvt.Serviceimpl;


import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.MechSpecializations;
import app.karimax.cvt.dto.MechanicDetails;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import app.karimax.cvt.exception.ResourceNotFoundException;
import app.karimax.cvt.model.Mechanic;
import app.karimax.cvt.model.SmsCall;
import app.karimax.cvt.model.User;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.response.PhonVerResponse;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import lombok.RequiredArgsConstructor;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.*;


@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final MechanicRepository mechanicRepository;
    private final Configs configs;
    private User user;
    private Mechanic mechanic;
    private Integer reviews;
    private Integer orders;
    private Integer experience;
    private List<MechSpecializations> mechSpecializationsList;

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
    public ApiResponseDTO getAllMechanics() {
        List<User> mechanics = userRepository.findMechanics("%Mechanic");

        return new SuccessResponseHandler(configs, mechanics).SuccResponse();

    }

    @Override
    public ApiResponseDTO getMechUserDetails(Long userableId) {

        User user = userRepository.findById(userableId).get();
        Mechanic mechanic = mechanicRepository.findById(user.getUserable_id()).get();

        Integer order = userRepository.countServices(mechanic.getId());

        Gson gson = new Gson();
        Type listType = new TypeToken<List<MechSpecializations>>() {}.getType();
        List<MechSpecializations> specializations = gson.fromJson(mechanic.getSpecialized_cars(), listType);


        MechanicDetails mechanicDetails = new MechanicDetails(user, mechanic, 1, order, 1, specializations);


        return new SuccessResponseHandler(configs, mechanicDetails).SuccResponse();
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
	

	


