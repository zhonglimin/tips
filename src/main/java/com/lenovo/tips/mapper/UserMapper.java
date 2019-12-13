package com.lenovo.tips.mapper;


import com.lenovo.tips.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    //  查询总记录数
    Long queryTotal();

    // 查询分页显示的数据
    List<User> queryPageData(@Param("start") int start, @Param("numPerPage") int numPerPage);

    // 新增用户
    void addUser(User user);

    // 修改用户
    void editUser(User user);

    // 批量删除
    void delByIds(@Param("ids") String[] ids);

    // 查询所有用户信息
    public List<User> queryAll();

    // 查询某个用户信息
    public User findUserByName(@Param("username")  String username);
}
