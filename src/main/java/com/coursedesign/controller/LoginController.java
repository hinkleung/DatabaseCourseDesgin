package com.coursedesign.controller;

import com.coursedesign.pojo.Administrator;
import com.coursedesign.pojo.Student;
import com.coursedesign.pojo.Teacher;
import com.coursedesign.service.IAdminService;
import com.coursedesign.service.IStudentService;
import com.coursedesign.service.ITeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private IStudentService iStudentService;

    @Autowired
    private IAdminService iAdminService;

    @Autowired
    private ITeacherService iTeacherService;


    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String userlogin(HttpSession session, @RequestParam String username, @RequestParam String password, @RequestParam String role){
        if(role.equals("student")){
            Student student = iStudentService.checkLogin(username,password);
            if(student!=null){
                session.setAttribute("student",student);
                return "student/studentIndex";
            }
        }
        else if(role.equals("teacher")){
            Teacher teacher = iTeacherService.checkLogin(username,password);
            if(teacher!=null){
                session.setAttribute("teacher",teacher);
                return "teacher/teacherIndex";
            }
        }
        else if(role.equals("admin")){
            Administrator administrator = iAdminService.checkLogin(username,password);
            if(administrator!=null){
                session.setAttribute("administrator",administrator);
                return "admin/adminIndex";
            }
        }

        return "loginFailure";
    }







}
