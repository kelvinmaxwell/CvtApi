package app.karimax.cvt;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootApplication
public class CvtapiApplication {

	public static void main(String[] args) {
	
		 SpringApplication app = new SpringApplication(CvtapiApplication.class);
		 app.setDefaultProperties(Collections.singletonMap("server.port", "4000"));
        app.run(args);
	}
	
	@Bean
  public ObjectMapper getObjectMapper() {

	    return new ObjectMapper();

	  }

}
