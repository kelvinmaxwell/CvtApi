package app.karimax.cvt.Serviceimpl;


import app.karimax.cvt.GetDate;
import app.karimax.cvt.SetBrands;
import app.karimax.cvt.Utils.UniqueIdGenerator;
import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dao.request.VehicleRequest;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.VehicleDetailsDto;
import app.karimax.cvt.exception.MainExceptions;
import app.karimax.cvt.model.*;
import app.karimax.cvt.repository.VehicleDetailsRepository;
import app.karimax.cvt.repository.VehiclesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.VehiclesService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class VehicleServiceImpl implements VehiclesService {
	
private final VehiclesRepository vehiclesRepository;
private final JdbcTemplate jdbcTemplate;
private final VehicleDetailsRepository vehicleDetailsRepository;
private final  Configs serviceConfig;
GetDate date=new GetDate("yyyy-MM-dd HH:mm");


	@Override
	public  ApiResponseDTO  getbrands() {
		System.err.println("reached brand section");
		SetBrands brands=new SetBrands();

		return new SuccessResponseHandler(serviceConfig, brands.getbrands()).SuccResponse();


	}

	@Override
	public ApiResponseDTO getmodels(String brandid) {
	ArrayList<String> mymodelsArrayList=	vehiclesRepository.findmodelsbymodel(brandid);
	
	ArrayList<VehicleModels> myreturnModels=new ArrayList<>();
	
	for(int k=0;k<mymodelsArrayList.size();k++) {
		VehicleModels listModel=new VehicleModels();
		listModel.setName(mymodelsArrayList.get(k));
		myreturnModels.add(listModel);
		
	}

		return new SuccessResponseHandler(serviceConfig,myreturnModels).SuccResponse();
	}
	@Override
	public ArrayList<VehicleYear> getyears(String brand, String model) {
		ArrayList<String> mymodelsArrayList=	vehiclesRepository.findyears(brand,model);
		
		ArrayList<VehicleYear> myreturnyears=new ArrayList<>();
		
		for(int k=0;k<mymodelsArrayList.size();k++) {
			VehicleYear listModel=new VehicleYear();
			listModel.setName(mymodelsArrayList.get(k));
			myreturnyears.add(listModel);
			
		}
			return myreturnyears;
	}

	@Override
	public ArrayList<VehicleTrim> gettrims(String brand, String model, String year) {
		ArrayList<String> mytrimssArrayList=	vehiclesRepository.findtrims(brand,model,year);

		ArrayList<VehicleTrim> myreturntrim=new ArrayList<>();

		for(int k=0;k<mytrimssArrayList.size();k++) {
			VehicleTrim listTrim=new VehicleTrim();
			listTrim.setName(mytrimssArrayList.get(k));
			myreturntrim.add(listTrim);

		}
		return myreturntrim;
	}

	@Override
	public ArrayList<EngineCapacity> getEngineCapacity(String brand, String model, String year) {
ArrayList<String> mymodelsArrayList=	vehiclesRepository.findEnginecc(brand,model,year);
		
		ArrayList<EngineCapacity> myreturnyears=new ArrayList<>();
		
		for(int k=0;k<mymodelsArrayList.size();k++) {
			EngineCapacity listModel=new EngineCapacity();
			listModel.setName(mymodelsArrayList.get(k));
			myreturnyears.add(listModel);
			
		}
			return myreturnyears;
	}
	@Override
	public Vehicles savevehicle(VehicleRequest vehicleRequest) {
		
VehicleDetails vehicleDetailsv=vehiclesRepository.findexistingveiclereg(vehicleRequest.getVehicle_registration_plate());
		
		if(vehicleDetailsv==null)
		{
			
		
		VehicleRequest vRequest=vehicleRequest;
		VehicleModelsDao vm=vehiclesRepository.findmodelid(vRequest.getBrand(),vRequest.getModel_name(),vehicleRequest.getYear_of_manufacture(),String.valueOf(vRequest.getEngine_capacity()),vRequest.getTrim());
		if(vm!=null)
		{
			UniqueIdGenerator uniqueIdGenerator = new UniqueIdGenerator("V-", "vehicles", "reference", 12);



			Vehicles vehicles=vehiclesRepository.save(Vehicles.builder().customer_id(vehicleRequest.getCustomer_id()).created_at(date.gdate()).reference(uniqueIdGenerator.generateUniqueId(jdbcTemplate)).vehicle_model_id(vm.getId()).build());
			if(vehicles!=null) {
				VehicleDetails vehicleDetails=vehicleDetailsRepository.save(VehicleDetails.builder().vehicle_registration_plate(vehicleRequest.getVehicle_registration_plate()).vehicle_id(vehicles.getId()).has_super_charger(0).has_turbo(0).build());
				
				if(vehicleDetails!=null)
				{
					return vehicles;
				}
				else 
					{
						
						throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "error saving vehicle");
					}
				
			}
			else 
				{
					throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "Vehicle Not Found");
				}
			
		}
		else {
			throw new MainExceptions(HttpStatus.EXPECTATION_FAILED, "Model  Not Found");
		}
		
			
		}
		else {
			throw new MainExceptions(HttpStatus.BAD_REQUEST, "Car Arleady registred");
		}
		
		
	}
	@Override
	public ArrayList<VehicleDetails> getcustomervehicles(long id) {
		ArrayList<VehicleDetails> returnVehicleDetails=new ArrayList<>();
		ArrayList<Vehicles> vehicles= vehiclesRepository.findvehiclebycust(id);
		System.out.println("...............................>userId"+ id);
		System.out.println("...............................>array size"+ vehicles.size());
		
		if(!vehicles.isEmpty()) {
		for(int k=0;k<vehicles.size();k++)	
		{
			VehicleDetails vehicleDetails=vehiclesRepository.findvehiclebyvid((long)vehicles.get(k).getId() );
			System.out.println("...............................>vehcile details size"+vehicles.get(k).getId());
			if(vehicleDetails!=null)
			{
				
				returnVehicleDetails.add(vehicleDetails);
				
			}
			else {
				throw new MainExceptions(HttpStatus.BAD_REQUEST, "No car Found");
			}
		
		
		
		}
		return returnVehicleDetails;
		}
		else {
			throw new MainExceptions(HttpStatus.BAD_REQUEST, "No car Found");
		}
		
		
		
	}
	@Override
	public VehicleModelsDao returnmodelid(VehicleRequest vRequest) {
		VehicleModelsDao vm=vehiclesRepository.findmodelidnotrim(vRequest.getBrand(),vRequest.getModel_name(),vRequest.getYear_of_manufacture(),String.valueOf(vRequest.getEngine_capacity()));
		if(vm!=null)
		{
			return vm;
			
		}
		else {
			throw new MainExceptions(HttpStatus.BAD_REQUEST, "Brand Not Found");
		}
	}
	@Override
	public Vehicles getvmodelid(long id) {
		Vehicles vehicles=vehiclesRepository.findvehiclebyid(id);
		
		return vehicles;
	}

	@Override
	public ApiResponseDTO getCustomerVehicles(Integer customerId) {
		List<Object[]> listGarageServices=vehiclesRepository.getCustomerVehicles(customerId);
		VehicleDetailsDto vehicleDetailsDto=new VehicleDetailsDto();

		List<VehicleDetailsDto> vehicleDetailsDtos=vehicleDetailsDto.mapToListOfObjects(listGarageServices);
		return new SuccessResponseHandler(serviceConfig,vehicleDetailsDtos).SuccResponse();
	}

	@Override
	public ApiResponseDTO getVehicleDetailsByReg(String regno) {
		List<Object[]> vehicledetails=vehiclesRepository.getVehicleDetailsByReg(regno);
		List<VehicleModels> resultList = new ArrayList<>();

		for (Object[] objectArray : vehicledetails) {
			if (objectArray != null && objectArray.length == 1 ){

				VehicleModels vehicleModels=new VehicleModels();

				vehicleModels.setName(String.valueOf((String) objectArray[0]));





				// Assuming the order is: garageName, vehicleRegistration, status, created_at





				resultList.add(vehicleModels);
			}
		}




		return new SuccessResponseHandler(serviceConfig,resultList).SuccResponse();
	}


}
