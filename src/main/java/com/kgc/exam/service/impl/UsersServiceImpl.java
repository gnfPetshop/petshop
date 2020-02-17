package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Users;
import com.kgc.exam.mapper.UsersMapper;
import com.kgc.exam.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;
    @Override
    public Users queryUsers() {
        return usersMapper.queryUsers();
    }

    @Override
    public Boolean updateUsers(Users users) {
        return usersMapper.updateUsers(users)==1;
    }

    @Override
    public Boolean updatePwd(Integer id,String oldpwd, String newpwd) {
        Boolean flag = false;
       Users users =  usersMapper.queryById(id);
       if (oldpwd.equals(users.getPassword())){
           flag = true;
           usersMapper.updatePwd(newpwd);
       }
        return flag;
    }
}
