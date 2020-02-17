package com.kgc.exam.mapper;

import com.kgc.exam.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressMapper {
    List<Address> queryAddress(@Param("userid") Integer id);

    //根据id查询地址信息，从而查出userid
    Address query(@Param("id") Integer id);

    //修改userid的所有used为0
    Integer update(@Param("userid") Integer userid);
    //修改传过来的id的used为1
    Integer updateAddress(@Param("id") Integer id);

    //删除address
    Integer del(@Param("id") Integer id);
    //增加地址
    Integer add(@Param("address") Address address);
}
