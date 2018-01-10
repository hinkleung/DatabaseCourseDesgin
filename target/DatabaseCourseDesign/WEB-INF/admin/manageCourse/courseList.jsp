<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page import="com.coursedesign.vo.admin_vo.CouTeaVo" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Teacher> teacherList = (List<Teacher>)session.getAttribute("teacherList");
    List<CouTeaVo> courseList = (List<CouTeaVo>)session.getAttribute("courseList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>查询课程</title>
</head>
<body>

<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addCourse.do">添加课程</a>  <a href="/admin/selectCourse.do">查询课程</a></div>
<span>请选择条件</span><br>
<form action="/admin/selectCourseByCondition.do" method="post">
    授课教师：
    <select name="tid" id="tid">
        <option value="" selected="selected"></option>
        <%
            for(Teacher teacher:teacherList){
        %>
        <option value=<%=teacher.getTid()%>><%=teacher.getTname()%></option>
        <%
            }
        %>
    </select><br>
    课程名：<input type="text" name="cname" id="cname" value=""><br>
    课程号：<input type="text" name="cno" id="cno" value="">
    <br>
    <input type="submit" value="查询" id="submit">
</form>

<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>课程号</th>
        <th>课程名</th>
        <th>地点</th>
        <th>时间</th>
        <th>学分</th>
        <th>容纳人数</th>
        <th>授课教师</th>
        <th></th>
        <th></th>
    </tr>
    <%
        for(CouTeaVo course : courseList){
    %>
    <tr>
        <td><%=course.getCno()%></td>
        <td><a href="/admin/courseDesc.do?cno=<%=course.getCno()%>"><%=course.getCname()%></a></td>
        <td><%=course.getPlace()%></td>
        <td><%=course.getWeektime()%></td>
        <td><%=course.getCredit()%></td>
        <td><%=course.getGalleryful()%></td>
        <td><%=course.getTeacherName()%></td>
        <td><a href="/admin/changeCourseInfo.do?cno=<%=course.getCno()%>">修改信息</a></td>
        <td><a href="/admin/deleteCourse.do?cno=<%=course.getCno()%>">删除课程</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
