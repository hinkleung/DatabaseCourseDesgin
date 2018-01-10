package com.coursedesign.dao;

import com.coursedesign.pojo.Course;
import com.coursedesign.vo.admin_vo.CouTeaVo;
import com.coursedesign.vo.student_vo.courseVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseMapper {
    int deleteByPrimaryKey(String cno);

    int insert(Course record);

    int insertSelective(Course record);

    Course selectByPrimaryKey(String cno);

    int updateByPrimaryKeySelective(Course record);

    int updateByPrimaryKeyWithBLOBs(Course record);

    int updateByPrimaryKey(Course record);

    List<courseVo> getCanSelectCourseByStudentId(@Param("sid") String sid);

    List<courseVo> getAlreadySelectCourse(@Param("sid") String sid);

    List<Course> getTeacherCourseList(@Param("tid") String tid);

    List<CouTeaVo> getCouTeaVoList(@Param("tid") String tid, @Param("cno") String cno, @Param("cname") String cname);
}