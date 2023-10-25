package org.tp.build.dto;


import lombok.Data;

import java.util.List;

@Data
public class BuildingDataDto {

    private Long buildingNumber;

    private List<RoomDataDto> roomList;

}
