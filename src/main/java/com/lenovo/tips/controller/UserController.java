package com.lenovo.tips.controller;


import com.lenovo.tips.pojo.Pagebean;
import com.lenovo.tips.pojo.User;
import com.lenovo.tips.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("list")
    @ResponseBody()
    public Pagebean list(@RequestParam(value = "page", defaultValue = "1") int pagenum,
                         @RequestParam(value = "rows", defaultValue = "2")int numPerPage) {
        Pagebean<User> pagebean = userService.queryPagebean(pagenum, numPerPage);
        return pagebean;
    }
    @RequestMapping("findAllUser")
    @ResponseBody()
    public List<User> findAllUser() {
        List<User> users = userService.queryAll();
        return users;
    }
    @RequestMapping("findUserByName")
    @ResponseBody()
    public User findUserByName(String username) {
         User user = userService.findUserByName(username);
        return user;
    }







    @RequestMapping("test")
    public String  test() {

        return  "users";
    }
    @RequestMapping("m8")
    public String  m8() {

        return  "m8";
    }
    @RequestMapping("m10")
    public String  m10() {

        return  "m10";
    }


}
