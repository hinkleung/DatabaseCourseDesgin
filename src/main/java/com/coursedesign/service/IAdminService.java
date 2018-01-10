package com.coursedesign.service;

import com.coursedesign.pojo.*;
import com.coursedesign.vo.admin_vo.CouTeaVo;
import com.coursedesign.vo.admin_vo.StuInfo;
import com.coursedesign.vo.student_vo.Studentinfo;

import java.util.Date;
import java.util.List;

public interface IAdminService {

    Administrator checkLogin(String username, String password);

    List<Department> getDepartmentList();

    int insertStudent(String sname, String sid, String s_sex, String s_pwd, String dno, String s_birthday);

    List<Studentinfo> selectStudentByCondition(String dno, String sname, String sid);

    StuInfo getStuInfo(String sid);

    int updateStudent(String sname, String sid, String s_sex, String s_pwd, String dno, Date sbirthday);

    int deleteStudent(String sid);

    int insertTeacher(String tname, String tid, String t_sex, String t_pwd, String t_title, String t_birthday);

    List<Teacher> selectTeacherByCondition(String tid, String tname, String t_title);

    Teacher getTeacher(String tid);

    int updateTeacher(String tname, String tid, String t_sex, String t_pwd, String t_title, Date tbirthday);

    int deleteTeacher(String tid);

    List<Teacher> getAllTeacher();

    int insertCourse(String cno, String cname, String place, String weektime, String credit, String galleryful, String c_desc, String tid);

    List<CouTeaVo> selectCourseByCondition(String tid, String cno, String cname);

    String getCourseDesc(String cno);

    Course getCourse(String cno);

    int updateCourse(String cno, String cname, String place, String weektime, String credit, String galleryful, String c_desc, String tid);

    int deleteCourse(String cno);
}
