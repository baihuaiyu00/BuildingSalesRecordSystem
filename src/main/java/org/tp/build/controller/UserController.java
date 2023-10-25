package org.tp.build.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.tp.build.entity.Room;
import org.tp.build.entity.User;
import org.tp.build.service.RoomService;
import org.tp.build.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@Slf4j
@Controller
public class UserController {

    @Resource
    private UserService userService;

    @Resource
    private RoomService roomService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home() {
        log.info("user come in home page");
        return "home";
    }

    @PostMapping(value = "/login")
    public String login(@RequestParam(value = "username") String username,
                        @RequestParam(value = "password") String password,
                        HttpServletRequest request, Model model) {
        log.info("user request for login,username:{}, password:{}", username, password);
        User loginUser = userService.lambdaQuery().eq(User::getUsername, username).one();
        if(Objects.isNull(loginUser)){
            model.addAttribute("loginMsg", "用户不存在");
            return "home";
        }
        String passwordInDB = loginUser.getPassword();
        if(password.equals(passwordInDB)){
            HttpSession session = request.getSession();
            session.setAttribute("loginName", loginUser.getName());
            List<Room> roomList = roomService.lambdaQuery().eq(Room::getBuildNumber, 1).list();
            model.addAttribute("roomList", roomList);
            model.addAttribute("buildNumber", 1);
            return "building";
        }else{
            model.addAttribute("loginMsg", "用户名密码错误");
            return "home";
        }

    }
}
