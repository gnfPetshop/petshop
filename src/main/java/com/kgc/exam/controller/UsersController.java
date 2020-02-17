package com.kgc.exam.controller;

import com.kgc.exam.entity.Users;
import com.kgc.exam.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody
@RequestMapping("users")
public class UsersController {

    @Autowired
    private UsersService usersService;

    @RequestMapping("queryUsers")
    public Users queryUsers(){

        Users users = usersService.queryUsers();
        return users;
    }
    @RequestMapping("updateUsers")
    public Boolean updateUsers(Users users){
        return usersService.updateUsers(users);
    }
    @RequestMapping("updatePwd")
    public Boolean updatepwd(@RequestParam("id") Integer id,@RequestParam("oldpwd") String oldpwd,@RequestParam("newpwd")String newpwd){
        return usersService.updatePwd(id,oldpwd,newpwd);
    }
}
