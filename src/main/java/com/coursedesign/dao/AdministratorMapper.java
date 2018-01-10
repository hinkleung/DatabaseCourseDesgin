package com.coursedesign.dao;

import com.coursedesign.pojo.Administrator;
import com.coursedesign.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

public interface AdministratorMapper {
    int deleteByPrimaryKey(String aid);

    int insert(Administrator record);

    int insertSelective(Administrator record);

    Administrator selectByPrimaryKey(String aid);

    int updateByPrimaryKeySelective(Administrator record);

    int updateByPrimaryKey(Administrator record);

    int checkusername(String username);

    Administrator selectLogin(@Param("username") String username, @Param("password") String password);
}