package app.karimax.cvt.dto;

import com.google.gson.Gson;
import lombok.Data;

@Data
public class ApiResponseDTO {
    private int stat_code;
    private int stat_type;
    private String stat_desc;

    private Object resultsList;

    @Override
    public String toString() {
        return new Gson().toJson(this);
    }
}
