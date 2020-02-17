package com.kgc.exam.service;

import com.kgc.exam.entity.Address;

import java.util.List;

public interface AddressService {
    //查询所有收货地址
    List<Address> queryAddress(Integer id);
    //修改选中的默认地址
    Boolean updateAddress(Integer id);
    //删除地址
    Boolean del(Integer id);
    //增加地址
    Boolean add(Address address);

}
