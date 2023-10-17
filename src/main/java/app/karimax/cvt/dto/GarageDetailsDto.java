package app.karimax.cvt.dto;

import lombok.Data;

@Data
public class GarageDetailsDto {
Integer  serviceId;
    String serviceName;
    String  serviceAmount;
    String  serviceCategory;

    String description;
    String imageUrl;

    public GarageDetailsDto mapToObject(Object[] objArray) {
        GarageDetailsDto dto = new GarageDetailsDto();

        // Assuming the order of elements in the array matches the order of fields in GarageDetailsDto
        dto.setServiceName((String) objArray[0]);
        dto.setServiceId((int)((long) objArray[1]));
        dto.setServiceAmount(String.valueOf((Double) objArray[2]));
        dto.setDescription((String) objArray[3]);
        dto.setServiceCategory((String) objArray[4]);

        // Add more fields as needed

        return dto;
    }


}
