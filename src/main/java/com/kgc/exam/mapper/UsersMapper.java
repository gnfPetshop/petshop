package com.kgc.exam.mapper;

import com.kgc.exam.entity.Users;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {

     Users queryUsers(@Param("id") Integer id);
     Integer updateUsers(@Param("users")Users users);
     //根据id查找用户
     Users queryById(@Param("id")Integer id);
     //修改密码
     Integer updatePwd(@Param("pwd") String pwd);
}
