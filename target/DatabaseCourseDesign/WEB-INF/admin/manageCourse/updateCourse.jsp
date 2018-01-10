<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page import="com.coursedesign.pojo.Course" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Teacher> teacherList = (List<Teacher>)session.getAttribute("teacherList");
    Course course = (Course)session.getAttribute("course");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>修改课程信息</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addCourse.do">添加课程</a>  <a href="/admin/selectCourse.do">查询课程</a></div>
<form action="/admin/updateCourse.do" method="post">

    课程名：<input type="text" name="cname" id="cname" value=<%=course.getCname()%>><br>
    课程号：<input type="text" name="cno" id="cno" readonly="readonly" value=<%=course.getCno()%>><br>
    地点：<input type="text" name="place" id="place" value=<%=course.getPlace()%>><br>
    时间：<input type="text" name="weektime" id="weektime" value=<%=course.getWeektime()%>><br>
    学分：<input type="text" name="credit" id="credit" value=<%=course.getCredit()%>><br>
    容纳人数：<input type="text" name="galleryful" id="galleryful" value=<%=course.getGalleryful()%>><br>
    授课教师：
    <select name="tid" id="tid">
        <%
            for(Teacher teacher:teacherList){
        %>
        <%
            if(teacher.getTid().equals(course.getTid())){
        %>
        <option selected="selected" value=<%=course.getTid()%>><%=teacher.getTname()%></option>
        <%
        }else{
        %>
        <option value=<%=teacher.getTid()%>><%=teacher.getTname()%></option>
        <%
                }
            }
        %>
    </select><br>
    课程简介：<textarea rows="3" cols="20" name="c_desc" id="c_desc"><%=course.getcDesc()%></textarea><br>
    <input type="submit" value="确认修改" id="submit">
</form>
</body>
</html>
