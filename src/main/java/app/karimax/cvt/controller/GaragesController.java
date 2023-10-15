package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.response.ErrorResponseUtil;
import app.karimax.cvt.service.GaragesService;
import app.karimax.cvt.service.ServicesService;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/garages")
public class GaragesController {
    private final GaragesService services;







    @GetMapping("getAll")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory() {
        return new ResponseEntity<ApiResponseDTO>(services.getAll(), HttpStatus.OK);
    }

    @GetMapping("getAll/{category}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("category") String category) {
        return new ResponseEntity<ApiResponseDTO>(services.getGarageByCategory(category), HttpStatus.OK);
    }

    @GetMapping("getGarageServices/{id}")
    public ResponseEntity<ApiResponseDTO> getAllGarageServiceByCategory(@PathVariable("id") Integer garageId) {
        return new ResponseEntity<ApiResponseDTO>(services.getGarageServices(garageId), HttpStatus.OK);
    }





}
