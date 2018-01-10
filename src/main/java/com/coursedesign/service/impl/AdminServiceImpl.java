package com.coursedesign.service.impl;

import com.coursedesign.dao.*;
import com.coursedesign.pojo.*;
import com.coursedesign.service.IAdminService;
import com.coursedesign.vo.admin_vo.CouTeaVo;
import com.coursedesign.vo.admin_vo.StuInfo;
import com.coursedesign.vo.student_vo.Studentinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service("IAdminService")
public class AdminServiceImpl implements IAdminService{

    @Autowired
    private AdministratorMapper administratorMapper;

    @Autowired
    private DepartmentMapper departmentMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private CourseMapper courseMapper;


    public Administrator checkLogin(String username, String password) {
        Administrator administrator = null;
        int rowcount = administratorMapper.checkusername(username);
        if (rowcount == 0) {
            return null;
        }
        administrator = administratorMapper.selectLogin(username, password);
        if (administrator == null) {
            return null;
        }
        return administrator;
    }

    public List<Department> getDepartmentList() {
        List<Department> departmentList = departmentMapper.getAlldepartment();
        return departmentList;
    }

    public int insertStudent(String sname, String sid, String s_sex, String s_pwd, String dno, String s_birthday) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date sbirthday=null;
        try {
            sbirthday = sdf.parse(s_birthday);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Student student = new Student(sid, dno, sname, s_sex, sbirthday, s_pwd);
        return studentMapper.insert(student);

    }

    public List<Studentinfo> selectStudentByCondition(String dno, String sname, String sid) {
        if("".equals(dno)){
            dno=null;
        }
        if("".equals(sname)){
            sname=null;
        }
        if("".equals(sid)){
            sid=null;
        }
        List<Studentinfo> studentList = studentMapper.selectStudentByCondition(dno,sname,sid);
        return studentList;
    }

    public StuInfo getStuInfo(String sid) {
        StuInfo stuInfo = studentMapper.selectStuInfoToAdmin(sid);
        return stuInfo;
    }

    public int deleteStudent(String sid) {
        return studentMapper.deleteByPrimaryKey(sid);
    }

    public int updateStudent(String sname, String sid, String s_sex, String s_pwd, String dno, Date sbirthday) {
        Student student = new Student(sid, dno, sname, s_sex, sbirthday, s_pwd);
        return studentMapper.updateByPrimaryKey(student);
    }

    public int insertTeacher(String tname, String tid, String t_sex, String t_pwd, String t_title, String t_birthday) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date tbirthday=null;
        try {
            tbirthday = sdf.parse(t_birthday);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Teacher teacher = new Teacher(tid,tname,t_sex,tbirthday,t_pwd,t_title);
        return teacherMapper.insert(teacher);
    }

    public List<Teacher> selectTeacherByCondition(String tid, String tname, String t_title) {
        if("".equals(tid)){
            tid=null;
        }
        if("".equals(tname)){
            tname=null;
        }
        if("".equals(t_title)){
            t_title=null;
        }
        List<Teacher> teacherList = teacherMapper.selectTeacherByCondition(tid,tname,t_title);
        return teacherList;
    }

    public Teacher getTeacher(String tid) {
        Teacher teacher = teacherMapper.selectByPrimaryKey(tid);
        return teacher;
    }

    public int updateTeacher(String tname, String tid, String t_sex, String t_pwd, String t_title, Date tbirthday) {
        Teacher teacher = new Teacher(tid,tname,t_sex,tbirthday,t_pwd,t_title);
        return teacherMapper.updateByPrimaryKey(teacher);
    }

    public int deleteTeacher(String tid) {
        return teacherMapper.deleteByPrimaryKey(tid);
    }

    public List<Teacher> getAllTeacher() {
        List<Teacher> teacherList = teacherMapper.getAllTeacher();
        return teacherList;
    }

    public int insertCourse(String cno, String cname, String place, String weektime, String credit, String galleryful, String c_desc, String tid) {
        Integer igalleryful = Integer.parseInt(galleryful);
        Integer icredit = Integer.parseInt(credit);
        Course course = new Course(cno,cname,place,weektime,icredit,igalleryful,tid,c_desc);
        return courseMapper.insert(course);
    }

    public List<CouTeaVo> selectCourseByCondition(String tid, String cno, String cname) {
        if("".equals(tid)){
            tid=null;
        }
        if("".equals(cno)){
            cno=null;
        }
        if("".equals(cname)){
            cname=null;
        }
        List<CouTeaVo> courseList = courseMapper.getCouTeaVoList(tid,cno,cname);
        return courseList;
    }

    public String getCourseDesc(String cno) {
        Course c = courseMapper.selectByPrimaryKey(cno);
        return c.getcDesc();
    }

    public Course getCourse(String cno) {
        Course c = courseMapper.selectByPrimaryKey(cno);
        return c;
    }

    public int updateCourse(String cno, String cname, String place, String weektime, String credit, String galleryful, String c_desc, String tid) {
        Integer igalleryful = Integer.parseInt(galleryful);
        Integer icredit = Integer.parseInt(credit);
        Course course = new Course(cno,cname,place,weektime,icredit,igalleryful,tid,c_desc);
        return courseMapper.updateByPrimaryKeyWithBLOBs(course);
    }

    public int deleteCourse(String cno) {
        return courseMapper.deleteByPrimaryKey(cno);
    }
}
