package app.karimax.cvt.response;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.config.ErrorUtil;
import app.karimax.cvt.exception.ErrorExceptionHandler;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;

import java.util.ArrayList;
import java.util.List;

@Component
public class ErrorResponseUtil {

    private final ObjectMapper objectMapper;
    private final Configs serviceConfig;
    String jsonData;

    public ErrorResponseUtil(ObjectMapper objectMapper, Configs serviceConfig) {
        this.objectMapper = objectMapper;
        this.serviceConfig = serviceConfig;
    }

    public ResponseEntity<Object> createResponseEntity(BindingResult bindingResult) {
        List<ObjectError> object = bindingResult.getAllErrors();
        ArrayList<String> errorArrayList = new ArrayList<>();
        for (int k = 0; k < object.size(); k++) {
            String[] parts = String.valueOf(object.get(k)).split(";", 0); // Split into at most 2 parts
            String result = parts[0];
            errorArrayList.add(result);
        }
        String uniqueList = new ErrorUtil(errorArrayList).removeDuplicates();

        try {
            jsonData = objectMapper.writeValueAsString(new ErrorExceptionHandler(serviceConfig, uniqueList).ErrorResponse());
        } catch (JsonProcessingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return new ResponseEntity<Object>(jsonData, HttpStatus.BAD_REQUEST);
    }
}
