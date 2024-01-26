package app.karimax.cvt.Serviceimpl;



import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.GaradgesDto;
import app.karimax.cvt.dto.VehicleDetailsDto;
import app.karimax.cvt.response.SuccessResponseHandler;
import org.apache.juli.logging.Log;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import app.karimax.cvt.GetDate;
import app.karimax.cvt.SetBrands;
import app.karimax.cvt.dao.request.VehicleRequest;
import app.karimax.cvt.exception.MainExceptions;
import app.karimax.cvt.model.VehicleBrand;
import app.karimax.cvt.model.VehicleDetails;
import app.karimax.cvt.model.EngineCapacity;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleModelsDao;
import app.karimax.cvt.model.VehicleYear;
import app.karimax.cvt.model.Vehicles;
import app.karimax.cvt.repository.VehicleDetailsRepository;
import app.karimax.cvt.repository.VehiclesRepository;
import app.karimax.cvt.service.UUIDGeneratorLogic;
import app.karimax.cvt.service.VehiclesService;

@Service

public class VehicleServiceImpl implements VehiclesService {
	
private VehiclesRepository vehiclesRepository;
private VehicleDetailsRepository vehicleDetailsRepository;
private  Configs serviceConfig;
GetDate date=new GetDate("yyyy-MM-dd HH:mm");

	public VehicleServiceImpl(VehiclesRepository vehiclesRepository,VehicleDetailsRepository vehicleDetailsRepository,Configs serviceConfig) {
		super();
		this.vehiclesRepository = vehiclesRepository;
		this.vehicleDetailsRepository = vehicleDetailsRepository;
		this.serviceConfig=serviceConfig;
	}
	@Override
	public ArrayList<VehicleBrand> getbrands() {
		SetBrands brands=new SetBrands();
	
		return brands.getbrands();
	}

	@Override
	public ArrayList<VehicleModels> getmodels(String brandid) {
	ArrayList<String> mymodelsArrayList=	vehiclesRepository.findmodelsbymodel(brandid);
	
	ArrayList<VehicleModels> myreturnModels=new ArrayList<>();
	
	for(int k=0;k<mymodelsArrayList.size();k++) {
		VehicleModels listModel=new VehicleModels();
		listModel.setName(mymodelsArrayList.get(k));
		myreturnModels.add(listModel);
		
	}
		return myreturnModels;
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
		VehicleModelsDao vm=vehiclesRepository.findmodelid(vRequest.getBrand(),vRequest.getModel_name(),vehicleRequest.getYear_of_manufacture(),String.valueOf(vRequest.getEngine_capacity()));
		if(vm!=null)
		{
			Vehicles vehicles=vehiclesRepository.save(Vehicles.builder().customer_id(vehicleRequest.getCustomer_id()).created_at(date.gdate()).reference("V-"+new UUIDGeneratorLogic().generateID()).vehicle_model_id(vm.getId()).build());
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
		VehicleModelsDao vm=vehiclesRepository.findmodelid(vRequest.getBrand(),vRequest.getModel_name(),vRequest.getYear_of_manufacture(),String.valueOf(vRequest.getEngine_capacity()));
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
