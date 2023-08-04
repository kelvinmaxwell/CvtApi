package app.karimax.cvt.exception;


import org.springframework.http.HttpStatus;

public class MainExceptions extends RuntimeException {

    private HttpStatus status;
    private String message;

    public MainExceptions(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }

    public MainExceptions(String message, HttpStatus status, String message1) {
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