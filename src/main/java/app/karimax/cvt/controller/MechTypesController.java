package app.karimax.cvt.controller;

import app.karimax.cvt.service.JobCardService;
import app.karimax.cvt.service.MechTypesService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/mechtypes")
public class MechTypesController {
    private MechTypesService mechTypesService;
}
