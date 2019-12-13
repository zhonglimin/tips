package com.lenovo.tips.service.impl;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lenovo.tips.mapper.UserMapper;
import com.lenovo.tips.pojo.Pagebean;
import com.lenovo.tips.pojo.User;
import com.lenovo.tips.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Pagebean<User> queryPagebean(int pagenum, int numPerPage) {
        PageHelper.startPage(pagenum, numPerPage);

        // 2 查询分页显示数据
        List<User> userList = userMapper.queryAll();

        // 1 查询总记录数
        PageInfo<User> pageInfo = new PageInfo<User>(userList);
        long total = pageInfo.getTotal();


        // 3 将查询结果封装到pagebean中
        Pagebean<User> pagebean = new Pagebean<User>();
        pagebean.setTotal(total);
        pagebean.setRows(userList);

        return pagebean;
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public void editUser(User user) {
        userMapper.editUser(user);
    }

    @Override
    public void delByIds(String[] ids) {
        userMapper.delByIds(ids);
    }

    @Override
    public List<User> queryAll() {
        return userMapper.queryAll();
    }

    @Override
    public User findUserByName(String username) {
        return userMapper.findUserByName(username);
    }
}
