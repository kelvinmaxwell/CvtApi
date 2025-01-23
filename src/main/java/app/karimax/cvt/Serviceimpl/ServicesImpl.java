package app.karimax.cvt.Serviceimpl;

import app.karimax.cvt.config.Configs;
import app.karimax.cvt.dto.ApiResponseDTO;
import app.karimax.cvt.dto.ServiceDto;
import app.karimax.cvt.repository.PrePurchaseInspectionFormRepository;
import app.karimax.cvt.repository.ServicesRepository;
import app.karimax.cvt.response.SuccessResponseHandler;
import app.karimax.cvt.service.ServicesService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ServicesImpl implements ServicesService {
    private final ServicesRepository servicesRepository;
    private final PrePurchaseInspectionFormRepository purchaseInspectionFormRepository;
    private final ModelMapper modelMapper;
    private final Configs serviceConfig;

    @Override
    public ApiResponseDTO getAllServiceByCategory(Integer garadgeId) {
        List<app.karimax.cvt.model.Services> listgroupGroups = servicesRepository.findAllByService_category_id(garadgeId);

        List<ServiceDto> listDto = listgroupGroups.stream()
                .map(service -> modelMapper.map(service, ServiceDto.class))
                .collect(Collectors.toList());


        return new SuccessResponseHandler(serviceConfig, listDto).SuccResponse();

    }

    @Override
    public ApiResponseDTO getInspectionByPackage(String aPackage) {


        return new SuccessResponseHandler(serviceConfig, purchaseInspectionFormRepository.getPrePurchaseInspectionFormsByPackage(aPackage)).SuccResponse();
    }

    @Override
    public ApiResponseDTO getServiceCategories(String grouping) {

        return new SuccessResponseHandler(serviceConfig, servicesRepository.geCategoryByGrouping(grouping)).SuccResponse();

    }

    @Override
    public ApiResponseDTO getServiceByCategory(String category) {
        System.err.println("categorygotten"+category);
        return new SuccessResponseHandler(serviceConfig, servicesRepository.getServicesByCategory(category)).SuccResponse();

    }


}
