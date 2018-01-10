<%@ page import="com.coursedesign.pojo.Teacher" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/29
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Teacher teacher = (Teacher) session.getAttribute("teacher");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title><%=teacher.getTname()%>老师，欢迎你的登录</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/teacher/logout.do">退出登录</a>
    <a href="/teacher/teacherInfo.do">个人信息</a>

</div>
<div>导航栏:</div>
<div><a href="/teacher/myCourse.do">我的授课</a>   <a href="/teacher/grade_course.do">录入成绩</a>  </div>



</body>
</html>
