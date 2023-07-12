package app.karimax.cvt.model;

import java.util.Date;

public class ErrorDetails {
    private Date timestamp;
    private String message;
    private String details;
    private String errorcode;

    public ErrorDetails(Date timestamp, String message, String details,String errorcode) {
        this.timestamp = timestamp;
        this.message = message;
        this.details = details;
        this.errorcode=errorcode;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public String getMessage() {
        return message;
    }

    public String getDetails() {
        return details;
    }
    public String getErrocode() {
        return errorcode;
    }
}

