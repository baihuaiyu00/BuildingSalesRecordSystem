package org.tp.build.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tp.build.entity.Room;
import org.tp.build.service.RoomService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@Slf4j
@Controller
public class BuildingController {

    @Resource
    private RoomService roomService;

    @RequestMapping(value = "/roomList", method = RequestMethod.GET)
    public String roomList(@RequestParam(value = "buildNumber", required = false) Long buildNumber,
                           HttpServletRequest request,
                           Model model){
        if(Objects.isNull(request.getSession().getAttribute("loginName"))){
            return "home";
        }
        log.info("query room List");
        if(Objects.isNull(buildNumber)){
            buildNumber = 1L;
        }
        List<Room> roomList = roomService.lambdaQuery().eq(Room::getBuildNumber, buildNumber).list();
        model.addAttribute("roomList", roomList);
        model.addAttribute("buildNumber", buildNumber);
        return "building";
    }

    @RequestMapping(value = "/updateRoomStatus", method = RequestMethod.GET)
    public String updateRoomStatus(@RequestParam(value = "roomNumber", required = false) String roomNumber,
                                   @RequestParam(value = "buildNumber", required = false) Long buildNumber,
                                   @RequestParam(value = "status", required = false) Long status,
                           HttpServletRequest request,
                           Model model){
        HttpSession session = request.getSession();
        if(Objects.isNull(session) || Objects.isNull(session.getAttribute("loginName"))){
            return "home";
        }
        log.info("user update room status:user:{}, roomNum:{}, buildNumber:{}, status:{}", session.getAttribute("loginName")
        ,roomNumber, buildNumber, status);

//        Room myRoom = roomService.lambdaQuery().eq(Room::getBuildNumber, buildNumber)
//                .eq(Room::getRoomName, roomNumber)
//                .eq(Room::getStatus, 1).one();
//        if(!myRoom.getViewUser().equals(session.getAttribute("loginName"))){
//
//        }

        roomService.lambdaUpdate().eq(Room::getBuildNumber, buildNumber)
                .eq(Room::getRoomName, roomNumber)
                .set(Room::getStatus, status)
                .set(status != 1, Room::getViewUser, null)
                .set(status == 1, Room::getViewUser, session.getAttribute("loginName"))
                .update();
        log.info("update done");

        List<Room> roomList = roomService.lambdaQuery().eq(Room::getBuildNumber, buildNumber).list();
        model.addAttribute("roomList", roomList);
        model.addAttribute("buildNumber", buildNumber);
        return "building";
    }


}
