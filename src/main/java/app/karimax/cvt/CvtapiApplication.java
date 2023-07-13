package app.karimax.cvt;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootApplication
public class CvtapiApplication {

	public static void main(String[] args) {
		SpringApplication.run(CvtapiApplication.class, args);
	}
	
	@Bean
  public ObjectMapper getObjectMapper() {

	    return new ObjectMapper();

	  }

}
