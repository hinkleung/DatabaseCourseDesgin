<%@ page import="com.coursedesign.pojo.Teacher" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Teacher teacher = (Teacher)session.getAttribute("teacher");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>修改教师资料</title>
</head>
<body>

<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addTeacher.do">添加教师</a>  <a href="/admin/selectTeacher.do">查询教师</a></div>
<div>修改教师资料:</div>
<form action="/admin/updateTeacher.do" method="post">
    名字：<input type="text" name="tname" id="tname" value=<%=teacher.getTname()%>><br>
    工号：<input type="text" name="tid" id="tid" readonly="readonly" value=<%=teacher.getTid()%>><br>
    性别：<input type="text" name="t_sex" id="t_sex" value=<%=teacher.gettSex()%>><br>
    密码：<input type="text" name="t_pwd" id="t_pwd" value=<%=teacher.gettPwd()%>><br>
    职称：<input type="text" name="t_title" id="t_title" value=<%=teacher.gettTitle()%>><br>
    生日：<input name="t_birthday" type="date"><br><br>
    <button type="submit" value="Submit">确认修改</button>
</form>
</body>
</html>
