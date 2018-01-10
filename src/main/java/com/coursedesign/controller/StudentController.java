package com.coursedesign.controller;

import com.coursedesign.pojo.Student;
import com.coursedesign.service.IStudentService;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.student_vo.courseGradeVo;
import com.coursedesign.vo.student_vo.courseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    IStudentService iStudentService;

    @RequestMapping(value = "/logout.do")
    public String logout(HttpSession session){
        session.removeAttribute("student");
        return "redirect:/index.jsp";
    }

    @RequestMapping(value = "/studentinfo.do")
    public String studentinfo(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        Studentinfo studentinfo = iStudentService.getStudentinfo(student.getSid());
        session.setAttribute("studentinfo",studentinfo);
        return "student/studentinfo";
    }

    @RequestMapping(value = "/showCanSelectCourse.do")
    public String showCanSelectCourse(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        List<courseVo> courseVoList = iStudentService.getCanSelectCourse(student.getSid());
        session.setAttribute("courseVoList",courseVoList);
        return "student/canSelectCourse";
    }

    @RequestMapping(value = "/alreadyCourse.do")
    public String alreadyCourse(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        List<courseVo> courseVoList = iStudentService.getAlreadySelectCourse(student.getSid());
        session.setAttribute("courseVoList",courseVoList);
        return "student/alreadySelectCourse";
    }

    @RequestMapping(value = "/backtoStudentIndex.do")
    public String backtoStudentIndex(){
        return "student/studentIndex";
    }

    @RequestMapping(value = "/selectCourse.do")
    public String selectCourse(HttpSession session,@RequestParam("cno") String cno){
        Student student = (Student) session.getAttribute("student");
        String sid = student.getSid();
        if(iStudentService.selectCourse(cno,sid)>0){
            return "student/selectSuccess";
        }
        return "Fail";
    }


    @RequestMapping(value = "/unselectCourse.do")
    public String unselectCourse(HttpSession session,@RequestParam("cno") String cno){
        Student student = (Student) session.getAttribute("student");
        String sid = student.getSid();
        //已经有成绩的不能退选
        if(iStudentService.hasGrade(cno,sid)){
            return "student/unselectFail";
        }
        if(iStudentService.unselectCourse(cno,sid)>0){
            return "student/unselectSuccess";
        }
        return "Fail";
    }


    @RequestMapping(value = "/courseGrade.do")
    public String courseGrade(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        List<courseGradeVo> courseGradeList = iStudentService.getCourseGradeList(student.getSid());
        session.setAttribute("courseGradeList",courseGradeList);
        return "student/courseGrade";
    }

    @RequestMapping(value = "/courseDesc.do")
    public String courseDesc(HttpSession session,@RequestParam("cno") String cno){
        String desc = iStudentService.getCourseDesc(cno);
        session.setAttribute("cdesc",desc);
        return "student/courseDesc";
    }
}
