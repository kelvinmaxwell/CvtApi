package app.karimax.cvt.controller;


import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.LoginDto;
import app.karimax.cvt.service.AuthenticationService;
import app.karimax.cvt.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {

    private final UserService userService;
    private final AuthenticationService authenticationService;

    @PostMapping("/login")
    public ResponseEntity<ApiResponseDTO> login(@RequestBody LoginDto loginDto){

        return new ResponseEntity<ApiResponseDTO>(authenticationService.login(loginDto), HttpStatus.OK);
    }


    @PostMapping("/verify-token/{idToken}")
    public ResponseEntity<ApiResponseDTO> verifyToken(@PathVariable String idToken) {

        return new ResponseEntity<>(authenticationService.authOGoogle(idToken), HttpStatus.OK);
    }


    @GetMapping("getuserphone/{phone}")
    public ResponseEntity<ApiResponseDTO> getUserByPhone(@PathVariable("phone") String phone) {

        return new ResponseEntity<>(userService.findByphone(phone), HttpStatus.OK);
    }


    @GetMapping("getuseremail/{email}")
    public ResponseEntity<ApiResponseDTO> getUserByEmail(@PathVariable("email") String email) {

        return new ResponseEntity<>(userService.getbyEmailapp(email), HttpStatus.OK);
    }


    @GetMapping("phonever/{phone}")
    public ResponseEntity<ApiResponseDTO> phoneVerification(@PathVariable("phone") String phone) {

        return new ResponseEntity<>(userService.findByphone(phone), HttpStatus.OK);
    }


    @GetMapping("get-all-mechs")
    public ResponseEntity<ApiResponseDTO> getAllMechanics() {

        return new ResponseEntity<>(userService.getAllMechanics(), HttpStatus.OK);
    }


    @GetMapping("get-mech-user-details/{userableId}")
    public ResponseEntity<ApiResponseDTO> getMechUserDetails(@PathVariable("userableId") Long userableId) {

        return new ResponseEntity<>(userService.getMechUserDetails(userableId), HttpStatus.OK);
    }



    //build get employee by id name


}
