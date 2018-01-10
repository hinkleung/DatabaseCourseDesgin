package com.coursedesign.service;

import com.coursedesign.pojo.Course;
import com.coursedesign.pojo.Student;
import com.coursedesign.pojo.Student_course;
import com.coursedesign.pojo.Teacher;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.teacher_vo.sc_gradeVo;

import java.util.List;

public interface ITeacherService {

    Teacher checkLogin(String username, String password);

    List<Course> getmyCourseList(String tid);

    String getCourseDesc(String cno);

    List<Studentinfo> getCourseStudentInfo(String cno);

    List<sc_gradeVo> getscGradeVo(String cno);

    int updateGrade(String sid, String cno, String newGrade);
}
