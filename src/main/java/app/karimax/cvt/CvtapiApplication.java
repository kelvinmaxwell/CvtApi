package app.karimax.cvt;

import java.util.Collections;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class CvtapiApplication {

	public static void main(String[] args) {
	
		 SpringApplication app = new SpringApplication(CvtapiApplication.class);
		 app.setDefaultProperties(Collections.singletonMap("server.port", "8080"));
        app.run(args);
	}
	
	@Bean
  public ObjectMapper getObjectMapper() {

	    return new ObjectMapper();

	  }

}
