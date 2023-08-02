package app.karimax.cvt.service.impl;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.awt.image.BandedSampleModel;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import app.karimax.cvt.SetBrands;
import app.karimax.cvt.model.VehicleBrand;
import app.karimax.cvt.model.EngineCapacity;
import app.karimax.cvt.model.Model;
import app.karimax.cvt.model.VehicleModels;
import app.karimax.cvt.model.VehicleYear;
import app.karimax.cvt.repository.EmployeeRepository;
import app.karimax.cvt.repository.MechanicRepository;
import app.karimax.cvt.repository.UserRepository;
import app.karimax.cvt.repository.VehiclesRepository;
import app.karimax.cvt.service.VehiclesService;
import lombok.RequiredArgsConstructor;

@Service

public class VehicleServiceImpl implements VehiclesService {
	
private VehiclesRepository vehiclesRepository;

	public VehicleServiceImpl(VehiclesRepository vehiclesRepository) {
		super();
		this.vehiclesRepository = vehiclesRepository;
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

}
