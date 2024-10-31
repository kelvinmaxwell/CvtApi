package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.response.ErrorResponseUtil;
import app.karimax.cvt.service.ServicesService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/services")
public class ServicesController {

    private final ServicesService services;
    private final ModelMapper modelMapper;
    private final ObjectMapper objectMapper;
    private final ErrorResponseUtil errorResponseUtil;
    String jsonData;






    @GetMapping("get-by-garage/{garadgeId}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("garadgeId") Integer  garadgeId) {
        return new ResponseEntity<ApiResponseDTO>(services.getAllServiceByCategory(garadgeId), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Object> getServiceById(@PathVariable("id") Integer id) {
        return new ResponseEntity<Object>(services.getServiceById(id), HttpStatus.OK);
    }
    @GetMapping("getServicesByCategory/{category}")
    public ResponseEntity<Object> getServiceById(@PathVariable("category") String  serviceCategory) {
        return new ResponseEntity<Object>(services.getServicesByCategory(serviceCategory), HttpStatus.OK);
    }
}
