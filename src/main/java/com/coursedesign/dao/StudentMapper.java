package com.coursedesign.dao;

import com.coursedesign.pojo.Student;
import com.coursedesign.vo.admin_vo.StuInfo;
import com.coursedesign.vo.student_vo.Studentinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    int deleteByPrimaryKey(String sid);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String sid);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    int checkusername(String username);

    Student selectLogin(@Param("username") String username, @Param("password") String password);

    Studentinfo getStudentinfo(@Param("sid") String sid);

    List<Studentinfo> getCourseStudentInfo(@Param("cno") String cno);

    List<Studentinfo> selectStudentByCondition(@Param("dno") String dno, @Param("sname") String sname, @Param("sid") String sid);

    StuInfo selectStuInfoToAdmin(@Param("sid") String sid);
}