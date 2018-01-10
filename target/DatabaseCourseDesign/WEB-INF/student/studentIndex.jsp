<%@ page import="com.coursedesign.pojo.Student" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/29
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Student student = (Student)session.getAttribute("student");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title><%=student.getSname()%>同学，欢迎你的登录</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/student/logout.do">退出登录</a>
    <a href="/student/studentinfo.do">个人信息</a>

</div>
<div>导航栏:</div>
<div><a href="/student/showCanSelectCourse.do">个人选课</a>   <a href="/student/alreadyCourse.do">已选课程</a>   <a href="/student/courseGrade.do">课程成绩</a></div>



</body>
</html>
