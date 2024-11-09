package app.karimax.cvt.controller;

import app.karimax.cvt.dao.request.QuotationsPostRequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.model.products;
import app.karimax.cvt.service.JobCardService;
import app.karimax.cvt.service.MechTypesService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/mechtypes")
public class MechTypesController {
    private final MechTypesService mechTypesService;

@GetMapping("getmechtypes")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory() {




        return new ResponseEntity<ApiResponseDTO>(mechTypesService.getMechTypes(), HttpStatus.OK);
    }

    @GetMapping("getmechtypesfiltered/{specialization}/{model}/{locationtype}/{location}")
    public ResponseEntity<ApiResponseDTO> getMechTypesFiltered(@PathVariable("specialization") String  specialization,@PathVariable("model") String  model,@PathVariable("locationtype") String  locationtype,@PathVariable("location") String  location) {




        return new ResponseEntity<ApiResponseDTO>(mechTypesService.getmechtypesfiltered(specialization,model,locationtype,location), HttpStatus.OK);
    }
}
