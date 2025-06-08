package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.service.GaragesService;
import lombok.RequiredArgsConstructor;
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


    @GetMapping("get-all-garages")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory() {
        return new ResponseEntity<ApiResponseDTO>(services.getAll(), HttpStatus.OK);
    }

    @GetMapping("get-all-garages-by-category/{category}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("category") String category) {
        return new ResponseEntity<ApiResponseDTO>(services.getGarageByCategory(category), HttpStatus.OK);
    }

    @GetMapping("get-garage-service/{id}")
    public ResponseEntity<ApiResponseDTO> getAllGarageServiceByCategory(@PathVariable("id") Integer garageId) {
        return new ResponseEntity<ApiResponseDTO>(services.getGarageServices(garageId), HttpStatus.OK);
    }

    @GetMapping("get-garages-details")
    public ResponseEntity<ApiResponseDTO> getAllGaragesWithDetails() {
        return new ResponseEntity<ApiResponseDTO>(services.getAllGaragesWithDetails(), HttpStatus.OK);
    }


}
