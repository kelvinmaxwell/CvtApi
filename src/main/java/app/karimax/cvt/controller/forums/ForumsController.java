package app.karimax.cvt.controller.forums;

import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.ForumUsersDto;
import app.karimax.cvt.dto.SaveForumsDto;
import app.karimax.cvt.service.ForumRolesService;
import app.karimax.cvt.service.ForumsService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/forums")
public class ForumsController {
    private final ForumsService forumsService;


    @GetMapping("getAll/{id}")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory(@PathVariable("id") Integer customerId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.getAll(customerId), HttpStatus.OK);
    }

    @PostMapping("followForum")
    public ResponseEntity<ApiResponseDTO> followForum(@RequestBody ForumUsersDto saveForumsDto) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.followForum(saveForumsDto), HttpStatus.OK);
    }

    @GetMapping("myForums/{id}")
    public ResponseEntity<ApiResponseDTO> myForums(@PathVariable("id") Integer customerId) {
        return new ResponseEntity<ApiResponseDTO>(forumsService.myForums(customerId), HttpStatus.OK);
    }



}
