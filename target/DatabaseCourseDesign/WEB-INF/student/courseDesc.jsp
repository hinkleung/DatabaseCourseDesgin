<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/30
  Time: 23:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String desc = (String) session.getAttribute("cdesc");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>课程介绍</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/student/logout.do">退出登录</a>
    <a href="/student/backtoStudentIndex.do">个人首页</a>
</div>
<div>导航栏:</div>
<div><a href="/student/showCanSelectCourse.do">个人选课</a>   <a href="/student/alreadyCourse.do">已选课程</a>   <a href="/student/courseGrade.do">课程成绩</a></div>

<div></div>
<div>课程介绍:</div>
<div><%=desc%></div>
</body>
</html>
