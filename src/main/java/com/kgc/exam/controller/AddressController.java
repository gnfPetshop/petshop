package com.kgc.exam.controller;

import com.kgc.exam.entity.Address;
import com.kgc.exam.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@ResponseBody
@RequestMapping("address")
public class AddressController {

    @Autowired
    private AddressService addressService;

    @RequestMapping("queryAddress")
    public List<Address> queryAddress(@RequestParam("userid") Integer id){
        return addressService.queryAddress(id);
    }

    @RequestMapping("updateAddress")
    public Boolean updateAddress(@RequestParam("id") Integer id){
        return  addressService.updateAddress(id);
    }
    @RequestMapping("del")
    public Boolean del(@RequestParam("id") Integer id){
        return addressService.del(id);
    }
    @RequestMapping("add")
    public Boolean add(Address address){
        return addressService.add(address);
    }

}
