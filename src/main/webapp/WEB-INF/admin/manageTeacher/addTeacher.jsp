<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 0:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>添加教师</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addTeacher.do">添加教师</a>  <a href="/admin/selectTeacher.do">查询教师</a></div>
<div>填写教师资料:</div>
<form action="/admin/insertTeacher.do" method="post">
    教师姓名：<input name="tname" type="text"><br><br>
    教师工号：<input name="tid" type="text"><br><br>
    性别：<input name="t_sex" type="text"><br><br>
    职称：<input name="t_title" type="text"><br><br>
    密码：<input name="t_pwd" type="text"><br><br>
    生日：<input name="t_birthday" type="date"><br><br>
    <button type="submit" value="Submit">确认</button>
</form>
</body>
</html>

