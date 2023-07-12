package app.karimax.cvt.exception;


import org.springframework.http.HttpStatus;

public class employeeExceptions extends RuntimeException {

    private HttpStatus status;
    private String message;

    public employeeExceptions(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }

    public employeeExceptions(String message, HttpStatus status, String message1) {
        super(message);
        this.status = status;
        this.message = message1;
    }

    public HttpStatus getStatus() {
        return status;
    }

    @Override
    public String getMessage() {
        return message;
    }
}