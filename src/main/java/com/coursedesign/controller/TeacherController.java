package com.coursedesign.controller;

import com.coursedesign.pojo.Course;
import com.coursedesign.pojo.Teacher;
import com.coursedesign.service.ITeacherService;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.teacher_vo.sc_gradeVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    ITeacherService iTeacherService;

    @RequestMapping(value = "/teacherInfo.do")
    public String teacherInfo(){
        return "teacher/teacherInfo";
    }

    @RequestMapping(value = "/backtoindex.do")
    public String backtoindex(){
        return "teacher/teacherIndex";
    }

    @RequestMapping(value = "/myCourse.do")
    public String myCourse(HttpSession session){
        Teacher teacher = (Teacher)session.getAttribute("teacher");
        List<Course> mycourseList = iTeacherService.getmyCourseList(teacher.getTid());
        session.setAttribute("mycourseList",mycourseList);
        return "teacher/mycourse";
    }

    @RequestMapping(value = "/grade_course.do")
    public String grade_course(HttpSession session){
        Teacher teacher = (Teacher)session.getAttribute("teacher");
        List<Course> mycourseList = iTeacherService.getmyCourseList(teacher.getTid());
        session.setAttribute("mycourseList",mycourseList);
        return "teacher/grade_course";
    }

    @RequestMapping(value = "/courseDesc.do")
    public String courseDesc(HttpSession session,@RequestParam("cno") String cno){
        String desc = iTeacherService.getCourseDesc(cno);
        session.setAttribute("cdesc",desc);
        return "teacher/courseDesc";
    }


    @RequestMapping(value = "/courseStudent.do")
    public String courseStudent(HttpSession session,@RequestParam("cno") String cno){
        List<Studentinfo> studentinfoList = iTeacherService.getCourseStudentInfo(cno);
        session.setAttribute("studentinfoList",studentinfoList);
        return "teacher/courseStudent";
    }

    @RequestMapping(value = "/grade_student.do")
    public String grade_student(HttpSession session,@RequestParam("cno") String cno){
        List<sc_gradeVo> scGradeVoList = iTeacherService.getscGradeVo(cno);
        session.setAttribute("scGradeVoList",scGradeVoList);
        return "teacher/sc_grade";
    }

    @RequestMapping(value = "/updateGrade.do")
    public String updateGrade(HttpSession session,@RequestParam("sid") String sid,@RequestParam("cno") String cno){
        Map scMap = new HashMap();
        scMap.put("sid",sid);
        scMap.put("cno",cno);
        session.setAttribute("scMap",scMap);
        return "teacher/inputGrade";
    }

    @RequestMapping(value = "/updateGrade2.do",method = RequestMethod.POST)
    public String updateGrade2(HttpSession session, @RequestParam String newGrade){
        Map scMap = (Map) session.getAttribute("scMap");
        String sid = (String) scMap.get("sid");
        String cno = (String) scMap.get("cno");
        iTeacherService.updateGrade(sid,cno,newGrade);
        return "teacher/updateGradeSuccess";
    }


    @RequestMapping(value = "/logout.do")
    public String logout(HttpSession session){
        session.removeAttribute("teacher");
        return "redirect:/index.jsp";
    }

}
