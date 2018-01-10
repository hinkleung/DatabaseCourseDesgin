<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/9
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>学生管理</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div style="font-size: 25px">学生管理</div>
<div>导航栏:</div>
<div><a href="/admin/addStudent.do">添加学生</a>  <a href="/admin/selectStudent.do">查询学生</a></div>
</body>
</html>
