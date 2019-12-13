package com.lenovo.tips.mapper;


import com.lenovo.tips.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext_dao.xml")
public class UserMapperTest {

    @Autowired
    private UserMapper userMapper;

    @Test
    public void findAll() throws Exception {
        List<User> users = userMapper.queryAll();
        System.out.println("users: "+ users);

    }

    @Test
    public void findUserByName() throws Exception {
        User users = userMapper.findUserByName("zhangsan");
        System.out.println("users: "+ users);

    }
}
