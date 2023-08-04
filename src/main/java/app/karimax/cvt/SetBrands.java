package app.karimax.cvt;

import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.gson.Gson;

import app.karimax.cvt.model.VehicleBrand;

public class SetBrands {
	String brandsjsonString="[{\"name\":\"Abarth\",\"parent_company\":\"FiatChryslerAutomobiles\"},{\"name\":\"AlfaRomeo\",\"parent_company\":\"Stellantis\"},{\"name\":\"AstonMartin\",\"parent_company\":\"AstonMartinLagondaGlobalHoldings\"},{\"name\":\"Audi\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Bentley\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"BMW\",\"parent_company\":\"BMWGroup\"},{\"name\":\"Bugatti\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Buick\",\"parent_company\":\"GeneralMotors\"},{\"name\":\"Cadillac\",\"parent_company\":\"GeneralMotors\"},{\"name\":\"Chevrolet\",\"parent_company\":\"GeneralMotors\"},{\"name\":\"Chrysler\",\"parent_company\":\"Stellantis\"},{\"name\":\"Citroën\",\"parent_company\":\"Stellantis\"},{\"name\":\"Dacia\",\"parent_company\":\"RenaultGroup\"},{\"name\":\"Daewoo\",\"parent_company\":\"GroupeRenault\"},{\"name\":\"Daihatsu\",\"parent_company\":\"ToyotaMotorCorporation\"},{\"name\":\"Dodge\",\"parent_company\":\"Stellantis\"},{\"name\":\"Ferrari\",\"parent_company\":\"FerrariN.V.\"},{\"name\":\"Fiat\",\"parent_company\":\"Stellantis\"},{\"name\":\"Ford\",\"parent_company\":\"FordMotorCompany\"},{\"name\":\"Geely\",\"parent_company\":\"GeelyAutoGroup\"},{\"name\":\"Genesis\",\"parent_company\":\"HyundaiMotorCompany\"},{\"name\":\"GMC\",\"parent_company\":\"GeneralMotors\"},{\"name\":\"Honda\",\"parent_company\":\"HondaMotorCompany\"},{\"name\":\"Hyundai\",\"parent_company\":\"HyundaiMotorCompany\"},{\"name\":\"Infiniti\",\"parent_company\":\"NissanMotorCompany\"},{\"name\":\"Jaguar\",\"parent_company\":\"JaguarLandRover\"},{\"name\":\"Jeep\",\"parent_company\":\"Stellantis\"},{\"name\":\"Kia\",\"parent_company\":\"KiaCorporation\"},{\"name\":\"Lada\",\"parent_company\":\"AvtoVAZ\"},{\"name\":\"Lamborghini\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Lancia\",\"parent_company\":\"Stellantis\"},{\"name\":\"LandRover\",\"parent_company\":\"JaguarLandRover\"},{\"name\":\"Lexus\",\"parent_company\":\"ToyotaMotorCorporation\"},{\"name\":\"Lincoln\",\"parent_company\":\"FordMotorCompany\"},{\"name\":\"Lotus\",\"parent_company\":\"GeelyAutoGroup\"},{\"name\":\"Maserati\",\"parent_company\":\"Stellantis\"},{\"name\":\"Mazda\",\"parent_company\":\"MazdaMotorCorporation\"},{\"name\":\"McLaren\",\"parent_company\":\"McLarenAutomotive\"},{\"name\":\"Mercedes-Benz\",\"parent_company\":\"DaimlerAG\"},{\"name\":\"MG\",\"parent_company\":\"SAICMotorCorporation\"},{\"name\":\"Mini\",\"parent_company\":\"BMWGroup\"},{\"name\":\"Mitsubishi\",\"parent_company\":\"MitsubishiMotorsCorporation\"},{\"name\":\"Nissan\",\"parent_company\":\"NissanMotorCompany\"},{\"name\":\"Opel\",\"parent_company\":\"Stellantis\"},{\"name\":\"Peugeot\",\"parent_company\":\"Stellantis\"},{\"name\":\"Porsche\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"RAM\",\"parent_company\":\"Stellantis\"},{\"name\":\"Renault\",\"parent_company\":\"RenaultGroup\"},{\"name\":\"Rolls-Royce\",\"parent_company\":\"BMWGroup\"},{\"name\":\"Saab\",\"parent_company\":\"NationalElectricVehicleSweden\"},{\"name\":\"Seat\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Škoda\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Smart\",\"parent_company\":\"DaimlerAG\"},{\"name\":\"SsangYong\",\"parent_company\":\"IndianmultinationalMahindra&MahindraLimited\"},{\"name\":\"Subaru\",\"parent_company\":\"SubaruCorporation\"},{\"name\":\"Suzuki\",\"parent_company\":\"SuzukiMotorCorporation\"},{\"name\":\"Tesla\",\"parent_company\":\"Tesla,Inc.\"},{\"name\":\"Toyota\",\"parent_company\":\"ToyotaMotorCorporation\"},{\"name\":\"Vauxhall\",\"parent_company\":\"Stellantis\"},{\"name\":\"Volkswagen\",\"parent_company\":\"VolkswagenGroup\"},{\"name\":\"Volvo\",\"parent_company\":\"GeelyHoldingGroup\"}]";
	
    
    public ArrayList<VehicleBrand> getbrands(){
    	
    	   
    	   
        JSONArray jsonArray = new JSONArray(brandsjsonString);  
         
      
        ArrayList<VehicleBrand> listdata = new ArrayList<VehicleBrand>();  
          
        //Checking whether the JSON array has some value or not  
        if (jsonArray != null) {   
              
            //Iterating JSON array  
            for (int i=0;i<jsonArray.length();i++){   
                  
            	Gson gson=new Gson();
            	VehicleBrand brdBrand=gson.fromJson(jsonArray.getJSONObject(i).toString(), VehicleBrand.class);
                //Adding each element of JSON array into ArrayList  
                listdata.add(brdBrand) ;
            }   
        }  
    	
    	return listdata;
    }
}


