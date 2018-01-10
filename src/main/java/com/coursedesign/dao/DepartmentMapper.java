package com.coursedesign.dao;

import com.coursedesign.pojo.Department;

import java.util.List;

public interface DepartmentMapper {
    int deleteByPrimaryKey(String dno);

    int insert(Department record);

    int insertSelective(Department record);

    Department selectByPrimaryKey(String dno);

    int updateByPrimaryKeySelective(Department record);

    int updateByPrimaryKeyWithBLOBs(Department record);

    int updateByPrimaryKey(Department record);

    List<Department> getAlldepartment();
}