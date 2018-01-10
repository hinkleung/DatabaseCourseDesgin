package com.coursedesign.dao;

import com.coursedesign.pojo.Student_course;
import com.coursedesign.pojo.Student_courseKey;
import com.coursedesign.vo.student_vo.courseGradeVo;
import com.coursedesign.vo.teacher_vo.sc_gradeVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface Student_courseMapper {
    int deleteByPrimaryKey(Student_courseKey key);

    int insert(Student_course record);

    int insertSelective(Student_course record);

    Student_course selectByPrimaryKey(Student_courseKey key);

    int updateByPrimaryKeySelective(Student_course record);

    int updateByPrimaryKey(Student_course record);

    List<courseGradeVo> getCourseGrade(@Param("sid") String sid);

    List<sc_gradeVo> getscGradeVo(@Param("cno") String cno);
}