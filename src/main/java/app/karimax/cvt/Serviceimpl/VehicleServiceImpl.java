package app.karimax.cvt.Serviceimpl;


import app.karimax.cvt.GetDate;
import app.karimax.cvt.SetBrands;
import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dao.request.VehicleRequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.VehicleDetailsDto;
import app.karimax.cvt.dto.registration.CarDto;
import app.karimax.cvt.dto.registration.UserDto;
import app.karimax.cvt.exception.MainExceptions;
import app.karimax.cvt.model.*;
import app.karimax.cvt.repository.CustomerRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.repository.VehicleDetailsRepository;
import app.karimax.cvt.repository.VehiclesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.VehiclesService;
import lombok.RequiredArgsConstructor;
import org.apache.juli.logging.Log;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class VehicleServiceImpl implements VehiclesService {

    private final VehiclesRepository vehiclesRepository;
    private final JdbcTemplate jdbcTemplate;
    private final VehicleDetailsRepository vehicleDetailsRepository;
    private final Configs serviceConfig;
    private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final CustomerRepository customerRepository;
    LocalDateTime currentDate = LocalDateTime.now();
    Timestamp sqlTimestamp = Timestamp.valueOf(currentDate);
    GetDate date = new GetDate("yyyy-MM-dd HH:mm");


    @Override
    public ApiResponseDTO getbrands() {
        System.err.println("reached brand section");
        SetBrands brands = new SetBrands();

        return new SuccessResponseHandler(serviceConfig, brands.getbrands()).SuccResponse();


    }

    @Override
    public ApiResponseDTO getmodels(String brandid) {
        ArrayList<String> mymodelsArrayList = vehiclesRepository.findmodelsbymodel(brandid);

        ArrayList<VehicleModels> myreturnModels = new ArrayList<>();

        for (int k = 0; k < mymodelsArrayList.size(); k++) {
            VehicleModels listModel = new VehicleModels();
            listModel.setName(mymodelsArrayList.get(k));
            myreturnModels.add(listModel);

        }

        return new SuccessResponseHandler(serviceConfig, myreturnModels).SuccResponse();
    }



    @Override
    public ApiResponseDTO getyears(String brand, String model) {
        ArrayList<String> mymodelsArrayList = vehiclesRepository.findyears(brand, model);

        ArrayList<VehicleYear> myreturnyears = new ArrayList<>();

        for (int k = 0; k < mymodelsArrayList.size(); k++) {
            VehicleYear listModel = new VehicleYear();
            listModel.setName(mymodelsArrayList.get(k));
            myreturnyears.add(listModel);

        }
        return new SuccessResponseHandler(serviceConfig, myreturnyears).SuccResponse();

    }

    @Override
    public ApiResponseDTO gettrims(String brand, String model, String year) {
        ArrayList<String> mytrimssArrayList = vehiclesRepository.findtrims(brand, model, year);

        ArrayList<VehicleTrim> myreturntrim = new ArrayList<>();

        for (int k = 0; k < mytrimssArrayList.size(); k++) {
            VehicleTrim listTrim = new VehicleTrim();
            listTrim.setName(mytrimssArrayList.get(k));
            myreturntrim.add(listTrim);

        }
        return new SuccessResponseHandler(serviceConfig, myreturntrim).SuccResponse();

    }

    @Override
    public ApiResponseDTO getEngineCapacity(String brand, String model, String year) {
        ArrayList<String> mymodelsArrayList = vehiclesRepository.findEnginecc(brand, model, year);

        ArrayList<EngineCapacity> myreturnyears = new ArrayList<>();

        for (int k = 0; k < mymodelsArrayList.size(); k++) {
            EngineCapacity listModel = new EngineCapacity();
            listModel.setName(mymodelsArrayList.get(k));
            myreturnyears.add(listModel);

        }
        return new SuccessResponseHandler(serviceConfig, myreturnyears).SuccResponse();

    }


    @Override
    public ApiResponseDTO saveUserRegestration(MultipartFile image, CarDto carDto, UserDto userDto) {

        VehicleModelsDao vm = vehiclesRepository.findmodelid(carDto.getMake(), carDto.getModel(), carDto.getYear(), String.valueOf(carDto.getEngineSize()), carDto.getTrim());
        UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("V-", "vehicles", "reference", 12);


        User user = User.builder().phone_number(userDto.getPhone())
                .email(userDto.getEmail()).password(passwordEncoder.encode(userDto.getPassword()))
                .build();

        Customer customer=new Customer();
        customer.setCity("Nairobi");
        customer.setCountry("Kenya");
        customer.setGender(userDto.getGender());
        customer.setFirst_name(userDto.getUsername());
        customer.setLast_name(userDto.getUsername());
        customer.setCurrent_address("{\"latitude\": -1.4, \"longitude\": 36.6380556, \"formatted_address\": \"Ngong Hills\"}");
        customer.setCreated_at(sqlTimestamp);
         uniqueIdGenerator=new UniqueIdGenerator("CUS-","customers","reference",12);
        customer.setReference(uniqueIdGenerator.generateUniqueId(jdbcTemplate));




        Customer savedUser=customerRepository.save(customer);

        user.setUserable_id(savedUser.getId());
        user.setUserable_type("App\\Models\\Customer");
        user.setCreated_at(sqlTimestamp);

        userRepository.save(user);


        Vehicles vehicles = vehiclesRepository.save(Vehicles.builder().customer_id((int) savedUser.getId()).created_at(date.gdate()).reference(uniqueIdGenerator.generateUniqueId(jdbcTemplate)).vehicle_model_id(vm.getId()).build());


        // Save the image
        String uploadDirectory = "uploads/carimages/";
        String fileName = image.getOriginalFilename();
        Path filePath = Paths.get(uploadDirectory + fileName);
        VehicleDetails vehicleDetails = vehicleDetailsRepository.save(VehicleDetails.builder().video_file_path(uploadDirectory + fileName).vehicle_registration_plate(carDto.getCarRegNo()).vehicle_id(vehicles.getId()).has_super_charger(0).has_turbo(0).build());

        // Ensure the directory exists
        try {
            Files.createDirectories(filePath.getParent());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        // Save the file to the specified directory
        try {
            Files.write(filePath, image.getBytes());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        return new SuccessResponseHandler(serviceConfig, vehicleDetails).SuccResponse();

    }

    @Override
    public ApiResponseDTO saveUserVehicle(MultipartFile image, CarDto carDto) {
        UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("V-", "vehicles", "reference", 12);
        VehicleModelsDao vm = vehiclesRepository.findmodelid(carDto.getMake(), carDto.getModel(), carDto.getYear(), String.valueOf(carDto.getEngineSize()), carDto.getTrim());

        User user=userRepository.getCustomerByUserId(carDto.getUserId());
        Vehicles vehicles = vehiclesRepository.save(Vehicles.builder().customer_id((int) user.getUserable_id()).created_at(date.gdate()).reference(uniqueIdGenerator.generateUniqueId(jdbcTemplate)).vehicle_model_id(vm.getId()).build());

        // Save the image
        String uploadDirectory = "uploads/carimages/";
        String fileName = image.getOriginalFilename();
        Path filePath = Paths.get(uploadDirectory + fileName);
        VehicleDetails vehicleDetails = vehicleDetailsRepository.save(VehicleDetails.builder().video_file_path(uploadDirectory + fileName).vehicle_registration_plate(carDto.getCarRegNo()).vehicle_id(vehicles.getId()).has_super_charger(0).has_turbo(0).engine_capacity(Integer.valueOf(carDto.getEngineSize())).build());

        // Ensure the directory exists
        try {
            Files.createDirectories(filePath.getParent());
        } catch (IOException e) {
            System.err.println("checking"+e.getMessage());
            throw new RuntimeException(e);
        }

        // Save the file to the specified directory
        try {
            Files.write(filePath, image.getBytes());
        } catch (IOException e) {
            System.err.println("writing"+e.getMessage());
            throw new RuntimeException(e);
        }
        return new SuccessResponseHandler(serviceConfig, vehicleDetails).SuccResponse();

    }

    @Override
    public Vehicles savevehicle(VehicleRequest vehicleRequest) {

        VehicleDetails vehicleDetailsv = vehiclesRepository.findexistingveiclereg(vehicleRequest.getVehicle_registration_plate());

        if (vehicleDetailsv == null) {


            VehicleRequest vRequest = vehicleRequest;
            VehicleModelsDao vm = vehiclesRepository.findmodelid(vRequest.getBrand(), vRequest.getModel_name(), vehicleRequest.getYear_of_manufacture(), String.valueOf(vRequest.getEngine_capacity()), vRequest.getTrim());
            if (vm != null) {
                UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("V-", "vehicles", "reference", 12);


                Vehicles vehicles = vehiclesRepository.save(Vehicles.builder().customer_id(vehicleRequest.getCustomer_id()).created_at(date.gdate()).reference(uniqueIdGenerator.generateUniqueId(jdbcTemplate)).vehicle_model_id(vm.getId()).build());
                if (vehicles != null) {
                    VehicleDetails vehicleDetails = vehicleDetailsRepository.save(VehicleDetails.builder().vehicle_registration_plate(vehicleRequest.getVehicle_registration_plate()).vehicle_id(vehicles.getId()).has_super_charger(0).has_turbo(0).build());

                    if (vehicleDetails != null) {
                        return vehicles;
                    } else {

                        throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "error saving vehicle");
                    }

                } else {
                    throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "Vehicle Not Found");
                }

            } else {
                throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "Model  Not Found");
            }


        } else {
            throw new MainExceptions(HttpStatus.BAD_REQUEST, "Car Arleady registred");
        }


    }

    @Override
    public ArrayList<VehicleDetails> getcustomervehicles(long id) {
        ArrayList<VehicleDetails> returnVehicleDetails = new ArrayList<>();
        ArrayList<Vehicles> vehicles = vehiclesRepository.findvehiclebycust(id);
        System.out.println("...............................>userId" + id);
        System.out.println("...............................>array size" + vehicles.size());

        if (!vehicles.isEmpty()) {
            for (int k = 0; k < vehicles.size(); k++) {
                VehicleDetails vehicleDetails = vehiclesRepository.findvehiclebyvid((long) vehicles.get(k).getId());
                System.out.println("...............................>vehcile details size" + vehicles.get(k).getId());
                if (vehicleDetails != null) {

                    returnVehicleDetails.add(vehicleDetails);

                } else {
                    throw new MainExceptions(HttpStatus.BAD_REQUEST, "No car Found");
                }


            }
            return returnVehicleDetails;
        } else {
            throw new MainExceptions(HttpStatus.BAD_REQUEST, "No car Found");
        }


    }

    @Override
    public VehicleModelsDao returnmodelid(VehicleRequest vRequest) {
        VehicleModelsDao vm = vehiclesRepository.findmodelidnotrim(vRequest.getBrand(), vRequest.getModel_name(), vRequest.getYear_of_manufacture(), String.valueOf(vRequest.getEngine_capacity()));
        if (vm != null) {
            return vm;

        } else {
            throw new MainExceptions(HttpStatus.BAD_REQUEST, "Brand Not Found");
        }
    }

    @Override
    public Vehicles getvmodelid(long id) {
        Vehicles vehicles = vehiclesRepository.findvehiclebyid(id);

        return vehicles;
    }

    @Override
    public ApiResponseDTO getCustomerVehicles(Long userId) {

        User user=userRepository.getCustomerByUserId(userId);
        List<Object[]> listGarageServices = vehiclesRepository.getCustomerVehicles(user.getUserable_id());
        VehicleDetailsDto vehicleDetailsDto = new VehicleDetailsDto();

        List<VehicleDetailsDto> vehicleDetailsDtos = vehicleDetailsDto.mapToListOfObjects(listGarageServices);
        return new SuccessResponseHandler(serviceConfig, vehicleDetailsDtos).SuccResponse();
    }

    @Override
    public ApiResponseDTO getVehicleDetailsByReg(String regno) {
        List<Object[]> vehicleDetails = vehiclesRepository.getVehicleDetailsByReg(regno);
        List<VehicleModels> resultList = new ArrayList<>();

        for (Object[] objectArray : vehicleDetails) {
            if (objectArray != null && objectArray.length == 1) {

                VehicleModels vehicleModels = new VehicleModels();

                vehicleModels.setName(String.valueOf((String) objectArray[0]));


                resultList.add(vehicleModels);
            }
        }


        return new SuccessResponseHandler(serviceConfig, resultList).SuccResponse();
    }


}
