package app.karimax.cvt.service;

import java.util.UUID;

import org.springframework.stereotype.Service;

@Service
public class UUIDGeneratorLogic {
 
    public String generateID(){
        return UUID.randomUUID().toString();
    }
}
