package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.ServiceDto;
import app.karimax.cvt.model.Services;
import app.karimax.cvt.repository.ServicesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.ServicesService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import java.util.stream.Collectors;
import java.util.List;

@Service
@RequiredArgsConstructor
public class ServicesImpl implements ServicesService {
    private final ServicesRepository servicesRepository;
    private final ModelMapper modelMapper;
    ApiResponseDTO apiResponseDTO=new ApiResponseDTO();
    app.karimax.cvt.model.Services services=new app.karimax.cvt.model.Services();
    ServiceDto serviceDto=new ServiceDto();
    private final Configs serviceConfig;
    @Override
    public ApiResponseDTO getAllServiceByCategory(Integer garadgeId) {
        List<app.karimax.cvt.model.Services> listgroupGroups=servicesRepository.findAllByService_category_id(garadgeId);

        List<ServiceDto> listDto=listgroupGroups.stream()
                .map(service -> modelMapper.map(service, ServiceDto.class))
                .collect(Collectors.toList());



        return new SuccessResponseHandler(serviceConfig,listDto).SuccResponse();

}

    @Override
    public ApiResponseDTO getServiceById(Integer id) {
        return null;
    }

    @Override
    public ApiResponseDTO getServicesByCategory(String serviceCategory) {

        List<Services> services=servicesRepository.getServicesByCategory(serviceCategory);

        List<ServiceDto> listDto=services.stream()
                .map(service -> modelMapper.map(service, ServiceDto.class))
                .toList();
        return new SuccessResponseHandler(serviceConfig,services).SuccResponse();
    }
}
