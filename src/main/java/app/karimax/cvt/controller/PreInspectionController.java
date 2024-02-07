package app.karimax.cvt.controller;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.PreInspectionRequestDao;
import app.karimax.cvt.model.PostComments;
import app.karimax.cvt.service.PreInspectionService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/inspection")
public class PreInspectionController {

  private  final  PreInspectionService preInspectionService;

    @GetMapping("existingInspection/{userId}")
    public ResponseEntity<ApiResponseDTO> existingInspection(@PathVariable("userId") Integer userId) {

        return new ResponseEntity<ApiResponseDTO>(preInspectionService.getActiveInspection(userId), HttpStatus.OK);
    }

    @PostMapping("insertInspectionRequest")
    public ResponseEntity<ApiResponseDTO> insertInspectionRequest(@RequestBody PreInspectionRequestDao preInspectionRequestDao) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(preInspectionService.saveInspectionRequest(preInspectionRequestDao), HttpStatus.OK);
    }

    @GetMapping("getuserinspection/{userId}")
    public ResponseEntity<ApiResponseDTO> getuserinspection(@PathVariable("userId") Integer userId) throws ParseException {
        return new ResponseEntity<ApiResponseDTO>(preInspectionService.getuserinspection(userId), HttpStatus.OK);
    }



}


