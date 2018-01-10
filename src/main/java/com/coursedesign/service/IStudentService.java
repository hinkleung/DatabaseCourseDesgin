package com.coursedesign.service;

import com.coursedesign.pojo.Student;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.student_vo.courseGradeVo;
import com.coursedesign.vo.student_vo.courseVo;

import java.util.List;

public interface IStudentService {

    Student checkLogin(String username, String password);

    Studentinfo getStudentinfo(String sid);

    List<courseVo> getCanSelectCourse(String sid);

    List<courseVo> getAlreadySelectCourse(String sid);

    int selectCourse(String cno, String sid);

    int unselectCourse(String cno, String sid);

    List<courseGradeVo> getCourseGradeList(String sid);

    String getCourseDesc(String cno);

    boolean hasGrade(String cno, String sid);
}
