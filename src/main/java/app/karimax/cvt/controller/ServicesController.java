package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.service.ServicesService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/services")
public class ServicesController {

    private final ServicesService services;

    String jsonData;


    @GetMapping("get-by-garage/{garadgeId}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("garadgeId") Integer garadgeId) {
        return new ResponseEntity<ApiResponseDTO>(services.getAllServiceByCategory(garadgeId), HttpStatus.OK);
    }

    @GetMapping("get-pre-purchase-inspection-by-package/{aPackage}")
    public ResponseEntity<ApiResponseDTO> getPrePurchaseInspectionForms(@PathVariable("aPackage") String aPackage) {
        return new ResponseEntity<ApiResponseDTO>(services.getInspectionByPackage(aPackage), HttpStatus.OK);
    }

    @GetMapping("get-service-categories/{grouping}")
    public ResponseEntity<ApiResponseDTO> getServiceCategories(@PathVariable("grouping") String grouping) {
        return new ResponseEntity<ApiResponseDTO>(services.getServiceCategories(grouping), HttpStatus.OK);

    }


    @GetMapping("get-service-by-category/{category}")
    public ResponseEntity<ApiResponseDTO> getServiceByCategory(@PathVariable("category") String category) {
        return new ResponseEntity<ApiResponseDTO>(services.getServiceByCategory(category), HttpStatus.OK);

    }

}
