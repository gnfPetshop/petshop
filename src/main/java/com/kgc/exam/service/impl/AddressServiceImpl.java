package com.kgc.exam.service.impl;

import com.kgc.exam.entity.Address;
import com.kgc.exam.mapper.AddressMapper;
import com.kgc.exam.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;
    @Override
    public List<Address> queryAddress(Integer id) {
        return addressMapper.queryAddress(id);
    }

    @Override
    public Boolean updateAddress(Integer id) {
        Address address = addressMapper.query(id);
        Integer userid = address.getUserid();
        addressMapper.update(userid);
        return addressMapper.updateAddress(id)==1;
    }

    @Override
    public Boolean del(Integer id) {
        Address address = addressMapper.query(id);
        Boolean flag = true;
        if (address.getUsed()==1){
            flag=false;
        }else{
            addressMapper.del(id);
        }
        return flag;
    }

    @Override
    public Boolean add(Address address) {
        return addressMapper.add(address)==1;
    }

}
