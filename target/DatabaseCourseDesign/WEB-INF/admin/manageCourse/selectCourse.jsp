<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Teacher> teacherList = (List<Teacher>)session.getAttribute("teacherList");
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
</body>
</html>
