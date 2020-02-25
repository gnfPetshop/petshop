package com.kgc.exam.service;

import com.kgc.exam.entity.Users;

public interface UsersService {
     Users queryUsers(Integer id);
     Boolean updateUsers(Users users);
     Boolean updatePwd(Integer id,String oldpwd,String newpwd);
}
