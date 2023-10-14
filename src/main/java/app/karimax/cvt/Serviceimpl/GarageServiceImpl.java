package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.GaradgesDto;
import app.karimax.cvt.dto.GarageDetailsDto;
import app.karimax.cvt.dto.ServiceDto;
import app.karimax.cvt.model.Garages;
import app.karimax.cvt.model.Services;
import app.karimax.cvt.model.products;
import app.karimax.cvt.repository.GarageRepository;
import app.karimax.cvt.repository.ServicesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.GaragesService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class GarageServiceImpl implements GaragesService {
    private final GarageRepository garageRepository;
    private final ModelMapper modelMapper;


    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getAll() {
        List<Garages> listGarages=garageRepository.findAll();

        List<GaradgesDto> listDto=listGarages.stream()
                .map(garage -> modelMapper.map(garage, GaradgesDto.class))
                .collect(Collectors.toList());



        return new SuccessResponseHandler(serviceConfig,listDto).SuccResponse();
    }

    @Override
    public ApiResponseDTO getGarageServices(Integer garageId) {
        List<Object[]> listGarageServices=garageRepository.getgarageServices(garageId);



        List<GarageDetailsDto> result = new ArrayList<>();

        for (Object[] objArray : listGarageServices) {

            GarageDetailsDto dto = new GarageDetailsDto().mapToObject(objArray);
            result.add(dto);
        }




        return new SuccessResponseHandler(serviceConfig,result).SuccResponse();
    }
}
