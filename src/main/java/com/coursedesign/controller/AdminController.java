package com.coursedesign.controller;

import com.coursedesign.pojo.Course;
import com.coursedesign.pojo.Department;
import com.coursedesign.pojo.Student;
import com.coursedesign.pojo.Teacher;
import com.coursedesign.service.IAdminService;
import com.coursedesign.service.IStudentService;
import com.coursedesign.service.impl.AdminServiceImpl;
import com.coursedesign.vo.admin_vo.CouTeaVo;
import com.coursedesign.vo.admin_vo.StuInfo;
import com.coursedesign.vo.student_vo.Studentinfo;
import com.coursedesign.vo.student_vo.courseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    public IAdminService iAdminService;

    @Autowired
    public IStudentService iStudentService;


    @RequestMapping(value = "/logout.do")
    public String logout(HttpSession session){
        session.removeAttribute("administrator");
        return "redirect:/index.jsp";
    }

    @RequestMapping(value = "courseDesc.do")
    public String courseDesc(HttpSession session,@RequestParam("cno") String cno){
        String desc = iAdminService.getCourseDesc(cno);
        session.setAttribute("cdesc",desc);
        return "admin/manageCourse/courseDesc";
    }

    @RequestMapping(value = "/backtoindex.do")
    public String backtoindex(){
        return "admin/adminIndex";
    }

    @RequestMapping(value = "/manageStudent.do")
    public String manageStudent(){
        return "admin/manageStudent/maStudentIndex";
    }

    @RequestMapping(value = "/addStudent.do")
    public String addStudent(HttpSession session){
        List<Department> departmentList = iAdminService.getDepartmentList();
        session.setAttribute("departmentList",departmentList);
        return "admin/manageStudent/addStudent";
    }

    @RequestMapping(value = "/insertStudent.do",method = RequestMethod.POST)
    public String insertStudent(HttpSession session,
                                @RequestParam String sname,
                                @RequestParam String sid,
                                @RequestParam String s_sex,
                                @RequestParam String s_pwd,
                                @RequestParam String dno,
                                @RequestParam String s_birthday){
        iAdminService.insertStudent(sname,sid,s_sex,s_pwd,dno,s_birthday);
        return "admin/manageStudent/maStudentIndex";
    }

    @RequestMapping(value = "selectStudent.do")
    public String selectStudent(HttpSession session){
        List<Department> departmentList = iAdminService.getDepartmentList();
        session.setAttribute("departmentList",departmentList);
        return "admin/manageStudent/selectStudent";
    }

    @RequestMapping(value = "selectStudentByCondition.do")
    public String selectStudentByCondition(HttpSession session,
                                           @RequestParam String dno,
                                           @RequestParam String sname,
                                           @RequestParam String sid){
        List<Studentinfo> studentList = iAdminService.selectStudentByCondition(dno,sname,sid);
        session.setAttribute("studentList",studentList);
        return "admin/manageStudent/studentList";
    }

    @RequestMapping(value = "changeStudentInfo.do")
    public String changeStudentInfo(HttpSession session,@RequestParam("sid") String sid){
        List<Department> departmentList = iAdminService.getDepartmentList();
        session.setAttribute("departmentList",departmentList);
        StuInfo stuInfo = iAdminService.getStuInfo(sid);
        session.setAttribute("stuInfo",stuInfo);
        return "admin/manageStudent/updateStudentInfo";
    }

    @RequestMapping(value = "updateStudentInfo.do")
    public String updateStudentInfo(@RequestParam String sname,
                                    @RequestParam String sid,
                                    @RequestParam String s_sex,
                                    @RequestParam String s_pwd,
                                    @RequestParam String dno,
                                    @RequestParam String s_birthday,
                                    HttpSession session){
        Date sbirthday=null;
        if(s_birthday.equals("")){
            StuInfo stuInfo = (StuInfo) session.getAttribute("stuInfo");
            sbirthday=stuInfo.getsBirthday();
        }else{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                sbirthday = sdf.parse(s_birthday);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        iAdminService.updateStudent(sname,sid,s_sex,s_pwd,dno,sbirthday);
        return "admin/manageStudent/selectStudent";
    }

    @RequestMapping(value = "deleteStudent.do")
    public String deleteStudent(HttpSession session,@RequestParam("sid") String sid){
        iAdminService.deleteStudent(sid);
        return "admin/manageStudent/selectStudent";
    }

    @RequestMapping(value = "manageTeacher.do")
    public String manageTeacher(){

        return "admin/manageTeacher/maTeacherIndex";
    }

    @RequestMapping(value = "addTeacher.do")
    public String addTeacher(){
        return "admin/manageTeacher/addTeacher";
    }

    @RequestMapping(value = "insertTeacher.do")
    public String insertTeacher(@RequestParam String tname,
                                @RequestParam String tid,
                                @RequestParam String t_sex,
                                @RequestParam String t_pwd,
                                @RequestParam String t_title,
                                @RequestParam String t_birthday){
        iAdminService.insertTeacher(tname,tid,t_sex,t_pwd,t_title,t_birthday);
        return "admin/manageTeacher/maTeacherIndex";
    }

    @RequestMapping(value = "selectTeacher.do")
    public String selectTeacher(){
        return "admin/manageTeacher/selectTeacher";
    }

    @RequestMapping(value = "selectTeacherByCondition.do")
    public String selectTeacherByCondition(@RequestParam String tid,
                                           @RequestParam String tname,
                                           @RequestParam String t_title,
                                           HttpSession session){
        List<Teacher> teacherList = iAdminService.selectTeacherByCondition(tid,tname,t_title);
        session.setAttribute("teacherList",teacherList);
        return "admin/manageTeacher/teacherList";
    }

    @RequestMapping(value = "changeTeacherInfo.do")
    public String changeTeacherInfo(HttpSession session,@RequestParam("tid") String tid){
        Teacher teacher = iAdminService.getTeacher(tid);
        session.setAttribute("teacher",teacher);
        return "admin/manageTeacher/updateTeacher";
    }

    @RequestMapping(value = "updateTeacher.do")
    public String updateTeacher(HttpSession session,
                                @RequestParam String tname,
                                @RequestParam String tid,
                                @RequestParam String t_sex,
                                @RequestParam String t_pwd,
                                @RequestParam String t_title,
                                @RequestParam String t_birthday){
        Date tbirthday=null;
        if(t_birthday.equals("")){
            Teacher teacher = (Teacher) session.getAttribute("teacher");
            tbirthday=teacher.gettBirthday();
        }else{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                tbirthday = sdf.parse(t_birthday);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        iAdminService.updateTeacher(tname,tid,t_sex,t_pwd,t_title,tbirthday);
        return "admin/manageTeacher/selectTeacher";

    }

    @RequestMapping(value = "deleteTeacher.do")
    public String deleteTeacher(@RequestParam("tid") String tid){
        iAdminService.deleteTeacher(tid);
        return "admin/manageTeacher/selectTeacher";
    }

    @RequestMapping(value = "manageCourse.do")
    public String manageCourse(){
        return "admin/manageCourse/maCourseIndex";
    }

    @RequestMapping(value = "addCourse.do")
    public String addCourse(HttpSession session){
        List<Teacher> teacherList = iAdminService.getAllTeacher();
        session.setAttribute("teacherList",teacherList);
        return "admin/manageCourse/addCourse";
    }

    @RequestMapping(value = "insertCourse.do")
    public String insertCourse(HttpSession session,
                               @RequestParam String cno,
                               @RequestParam String cname,
                               @RequestParam String place,
                               @RequestParam String weektime,
                               @RequestParam String credit,
                               @RequestParam String galleryful,
                               @RequestParam String c_desc,
                               @RequestParam String tid){
        iAdminService.insertCourse(cno,cname,place,weektime,credit,galleryful,c_desc,tid);
        return "admin/manageCourse/maCourseIndex";
    }

    @RequestMapping(value = "selectCourse.do")
    public String selectCourse(HttpSession session){
        List<Teacher> teacherList = iAdminService.getAllTeacher();
        session.setAttribute("teacherList",teacherList);
        return "admin/manageCourse/selectCourse";
    }

    @RequestMapping(value = "selectCourseByCondition.do")
    public String selectCourseByCondition(HttpSession session,
                                          @RequestParam String tid,
                                          @RequestParam String cno,
                                          @RequestParam String cname){
        List<CouTeaVo> courseList = iAdminService.selectCourseByCondition(tid,cno,cname);
        session.setAttribute("courseList",courseList);
        return "admin/manageCourse/courseList";
    }

    @RequestMapping(value = "changeCourseInfo.do")
    public String changeCourseInfo(@RequestParam("cno") String cno,
                                   HttpSession session){
        List<Teacher> teacherList = iAdminService.getAllTeacher();
        session.setAttribute("teacherList",teacherList);
        Course course = iAdminService.getCourse(cno);
        session.setAttribute("course",course);
        return "admin/manageCourse/updateCourse";
    }

    @RequestMapping(value = "updateCourse.do")
    public String updateCourse(@RequestParam String cno,
                               @RequestParam String cname,
                               @RequestParam String place,
                               @RequestParam String weektime,
                               @RequestParam String credit,
                               @RequestParam String galleryful,
                               @RequestParam String c_desc,
                               @RequestParam String tid){
        iAdminService.updateCourse(cno,cname,place,weektime,credit,galleryful,c_desc,tid);
        return "admin/manageCourse/selectCourse";
    }

    @RequestMapping(value = "deleteCourse.do")
    public String deleteCourse(@RequestParam("cno") String cno){
        iAdminService.deleteCourse(cno);
        return "admin/manageCourse/selectCourse";
    }
    @RequestMapping(value = "manageSC")
    public String manageSC(){
        return "admin/manageSC/maSCIndex";
    }

    @RequestMapping(value = "chooseCourse.do")
    public String chooseCourse(HttpSession session){
        List<Department> departmentList = iAdminService.getDepartmentList();
        session.setAttribute("departmentList",departmentList);
        return "admin/manageSC/findStudent";
    }
    @RequestMapping(value = "FindStudent.do")
    public String FindStudent(HttpSession session,
                              @RequestParam String dno,
                              @RequestParam String sname,
                              @RequestParam String sid){
        List<Studentinfo> studentList = iAdminService.selectStudentByCondition(dno,sname,sid);
        session.setAttribute("studentList",studentList);
        return "admin/manageSC/studentlist";
    }

    @RequestMapping(value = "canChooseCourse.do")
    public String canChooseCourse(@RequestParam("sid") String sid,HttpSession session){
        List<courseVo> courseVoList = iStudentService.getCanSelectCourse(sid);
        session.setAttribute("courseVoList",courseVoList);
        session.setAttribute("studentId",sid);
        return "admin/manageSC/canChooseCourse";
    }

    @RequestMapping(value = "insertSC.do")
    public String insertSC(HttpSession session,@RequestParam("cno")String cno){
        String sid = (String)session.getAttribute("studentId");
        iStudentService.selectCourse(cno,sid);
        return "admin/manageSC/maSCIndex";
    }

    @RequestMapping(value = "unChoose.do")
    public String unChoose(HttpSession session){
        List<Department> departmentList = iAdminService.getDepartmentList();
        session.setAttribute("departmentList",departmentList);
        return "admin/manageSC/findStudent2";
    }

    @RequestMapping(value = "FindStudent2.do")
    public String FindStudent2(HttpSession session,
                               @RequestParam String dno,
                               @RequestParam String sname,
                               @RequestParam String sid){
        List<Studentinfo> studentList = iAdminService.selectStudentByCondition(dno,sname,sid);
        session.setAttribute("studentList",studentList);
        return "admin/manageSC/studentlist2";
    }

    @RequestMapping(value = "alreadayChooseCourse.do")
    public String alreadayChooseCourse(HttpSession session,@RequestParam("sid") String sid){
        List<courseVo> courseVoList = iStudentService.getAlreadySelectCourse(sid);
        session.setAttribute("studentId",sid);
        session.setAttribute("courseVoList",courseVoList);
        return "admin/manageSC/alreadyChoose";
    }

    @RequestMapping(value = "deleteSC.do")
    public String deleteSC(HttpSession session,@RequestParam("cno")String cno){
        String sid = (String)session.getAttribute("studentId");
        iStudentService.unselectCourse(cno,sid);
        return "admin/manageSC/maSCIndex";
    }

}
