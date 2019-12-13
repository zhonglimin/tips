package com.lenovo.tips.service;


import com.lenovo.tips.pojo.Pagebean;
import com.lenovo.tips.pojo.User;

import java.util.List;

public interface UserService {

    /**
     * 查询分页显示数据
     * @param pagenum 当前页码
     * @param numPerPage 每页显示条数
     * @return
     */
    Pagebean<User> queryPagebean(int pagenum, int numPerPage);

    // 添加用户
    void addUser(User user);

    // 修改用户信息
    void editUser(User user);

    // 批量删除用户
    void delByIds(String[] ids);

    //查询所有用户
    List<User> queryAll();

    User findUserByName(String username);

}
