package com.coursedesign.dao;

import com.coursedesign.pojo.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {
    int deleteByPrimaryKey(String tid);

    int insert(Teacher record);

    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(String tid);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

    int checkusername(String username);

    Teacher selectLogin(@Param("username") String username, @Param("password") String password);

    List<Teacher> selectTeacherByCondition(@Param("tid") String tid, @Param("tname") String tname, @Param("t_title") String t_title);

    List<Teacher> getAllTeacher();
}