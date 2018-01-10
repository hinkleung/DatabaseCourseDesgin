package com.coursedesign.service.impl;

import com.coursedesign.dao.CourseMapper;
import com.coursedesign.dao.StudentMapper;
import com.coursedesign.dao.Student_courseMapper;
import com.coursedesign.pojo.Course;
import com.coursedesign.pojo.Student;
import com.coursedesign.pojo.Student_course;
import com.coursedesign.pojo.Student_courseKey;
import com.coursedesign.service.IStudentService;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.student_vo.courseGradeVo;
import com.coursedesign.vo.student_vo.courseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("IStudentService")
public class StudentServiceImpl implements IStudentService{

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private Student_courseMapper student_courseMapper;

    public Student checkLogin(String username, String password) {
        Student student = null;
        int rowcount = studentMapper.checkusername(username);
        if(rowcount == 0){
            return null;
        }
        student = studentMapper.selectLogin(username,password);
        if(student==null){
            return null;
        }
        return student;
    }

    public Studentinfo getStudentinfo(String sid){
        return studentMapper.getStudentinfo(sid);
    }

    public List<courseVo> getCanSelectCourse(String sid) {
        List<courseVo> courseList = courseMapper.getCanSelectCourseByStudentId(sid);
        return courseList;
    }

    public List<courseVo> getAlreadySelectCourse(String sid){
        List<courseVo> courseList = courseMapper.getAlreadySelectCourse(sid);
        return courseList;
    }

    public int selectCourse(String cno, String sid) {
        Student_course sc = new Student_course(sid,cno);
        int rowcount = 0;
        rowcount = student_courseMapper.insertSelective(sc);
        return rowcount;
    }

    public int unselectCourse(String cno, String sid) {
        Student_courseKey sck = new Student_courseKey(sid,cno);
        int rowcount=0;
        rowcount=student_courseMapper.deleteByPrimaryKey(sck);
        return rowcount;
    }

    public List<courseGradeVo> getCourseGradeList(String sid) {
        List<courseGradeVo> courseGradeList = student_courseMapper.getCourseGrade(sid);
        return courseGradeList;
    }

    public String getCourseDesc(String cno) {
        Course c = courseMapper.selectByPrimaryKey(cno);
        return c.getcDesc();
    }

    public boolean hasGrade(String cno, String sid) {
        int grade=0;
        Student_courseKey sck = new Student_courseKey(sid,cno);
        Student_course sc = student_courseMapper.selectByPrimaryKey(sck);
        if(sc.getGrade()!=null){
            return true;
        }
        return false;
    }
}
