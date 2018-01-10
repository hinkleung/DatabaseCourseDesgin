<%@ page import="com.coursedesign.pojo.Administrator" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/29
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Administrator administrator = (Administrator)session.getAttribute("administrator");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>管理员<%=administrator.getAname()%>你好</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/manageStudent.do">学生管理</a>  <a href="/admin/manageTeacher.do">教师管理</a>  <a href="/admin/manageCourse.do">课程管理</a>    <a href="/admin/manageSC.do">选课管理</a></div>

</body>
</html>
