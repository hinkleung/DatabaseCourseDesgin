package com.coursedesign.service.impl;

import com.coursedesign.dao.CourseMapper;
import com.coursedesign.dao.StudentMapper;
import com.coursedesign.dao.Student_courseMapper;
import com.coursedesign.dao.TeacherMapper;
import com.coursedesign.pojo.Course;
import com.coursedesign.pojo.Student;
import com.coursedesign.pojo.Student_course;
import com.coursedesign.pojo.Teacher;
import com.coursedesign.service.ITeacherService;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.teacher_vo.sc_gradeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("ITeacherService")
public class TeacherServiceImpl implements ITeacherService {

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private Student_courseMapper student_courseMapper;

    public Teacher checkLogin(String username, String password) {
        Teacher teacher = null;
        int rowcount = teacherMapper.checkusername(username);
        if (rowcount == 0) {
            return null;
        }
        teacher = teacherMapper.selectLogin(username, password);
        if (teacher == null) {
            return null;
        }
        return teacher;
    }

    public List<Course> getmyCourseList(String tid){
        List<Course> myCourseList = courseMapper.getTeacherCourseList(tid);
        return myCourseList;
    }

    public String getCourseDesc(String cno) {
        Course c = courseMapper.selectByPrimaryKey(cno);
        return c.getcDesc();
    }

    public List<Studentinfo> getCourseStudentInfo(String cno) {
        List<Studentinfo> studentinfoList = studentMapper.getCourseStudentInfo(cno);
        return studentinfoList;
    }

    public List<sc_gradeVo> getscGradeVo(String cno) {
        List<sc_gradeVo> scGradeVoList = student_courseMapper.getscGradeVo(cno);
        return scGradeVoList;
    }

    public int updateGrade(String sid, String cno, String newGrade) {
        Integer grade = Integer.parseInt(newGrade);
        Student_course sc = new Student_course(sid,cno,grade);
        return student_courseMapper.updateByPrimaryKey(sc);
    }
}
