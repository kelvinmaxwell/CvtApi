package app.karimax.cvt.controller.forums;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.SaveForumsDto;
import app.karimax.cvt.model.Employee;
import app.karimax.cvt.model.Forums;
import app.karimax.cvt.service.ForumRolesService;
import app.karimax.cvt.service.ServicesService;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/forumroles")
public class ForumRolesController {
    private final ForumRolesService forumRolesService;


    @GetMapping("getAll")
    public ResponseEntity<ApiResponseDTO> getAllServiceByCategory() {
        return new ResponseEntity<ApiResponseDTO>(forumRolesService.getAll(), HttpStatus.OK);
    }

    @PostMapping("saveForum")
    public ResponseEntity<ApiResponseDTO> saveForum(@RequestBody SaveForumsDto saveForumsDto) {




        return new ResponseEntity<ApiResponseDTO>(forumRolesService.saveForum(saveForumsDto), HttpStatus.OK);
    }
}
