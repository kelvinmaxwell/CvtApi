package app.karimax.cvt.controller;

import app.karimax.cvt.dao.request.PhoneRequest;
import app.karimax.cvt.dao.request.QuotationsPostRequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.QuotationService;
import app.karimax.cvt.model.Quotations;
import app.karimax.cvt.response.ErrorResponseUtil;
import app.karimax.cvt.service.QuotationsService;
import app.karimax.cvt.service.ServicesService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/quotations")
public class QuotationsController {

    private final QuotationsService quotationsService;
    private final ModelMapper modelMapper;
    private final ObjectMapper objectMapper;
    private final ErrorResponseUtil errorResponseUtil;
    String jsonData;






    @PostMapping("addquatations")
    public ResponseEntity<ApiResponseDTO> addQuatations(@RequestBody QuotationsPostRequest  request) {




        return new ResponseEntity<ApiResponseDTO>(quotationsService.saveQuotations(request), HttpStatus.OK);
    }


    @GetMapping("activequotation/{userId}/{serviceId}")
    public ResponseEntity<ApiResponseDTO> getAllactivequotation(@PathVariable("userId") Integer  userId,@PathVariable("serviceId") Integer  serviceId) {




        return new ResponseEntity<ApiResponseDTO>(quotationsService.getActiveQuotation(userId,serviceId), HttpStatus.OK);
    }


    @GetMapping("getquotations/{userId}")
    public ResponseEntity<ApiResponseDTO> getAlluserquotations(@PathVariable("userId") Integer  userId) {




        return new ResponseEntity<ApiResponseDTO>(quotationsService.getAlluserquotations(userId), HttpStatus.OK);
    }

    @GetMapping("getVehicle-description-content/{vehicleRegistration}")
    public ResponseEntity<ApiResponseDTO> getVehicleDescriptionContent(@PathVariable("vehicleRegistration") String  vehicleRegistration) {




        return new ResponseEntity<ApiResponseDTO>(quotationsService.getVehicleDescriptionContent(vehicleRegistration), HttpStatus.OK);
    }


}
