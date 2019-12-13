package com.lenovo.tips.service;


import com.lenovo.tips.pojo.Pagebean;
import com.lenovo.tips.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring/applicationContext_*.xml")
public class UserServiceTest {
    @Autowired
    private  UserService userService;

    @Test
    public void findAllPagebean() throws Exception {
        Pagebean<User> Pagebean = userService.queryPagebean(1, 2);
        System.out.println("Pagebean: "+ Pagebean);
        List<User> users = Pagebean.getRows();

        System.out.println("users: "+ users);

    }
}
