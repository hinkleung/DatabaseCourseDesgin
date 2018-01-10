<%@ page import="com.coursedesign.pojo.Student" %>
<%@ page import="com.coursedesign.pojo.Department" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/9
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Department> departmentList = (List<Department>) session.getAttribute("departmentList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>添加学生</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addStudent.do">添加学生</a>  <a href="/admin/selectStudent.do">查询学生</a></div>
<div>填写学生资料:</div>
<form action="/admin/insertStudent.do" method="post">
    学生姓名：<input name="sname" type="text"><br><br>
    学号：<input name="sid" type="text"><br><br>
    性别：<input name="s_sex" type="text"><br><br>
    密码：<input name="s_pwd" type="text"><br><br>
    学院：
    <select name="dno" id="dno">
    <%
        for(Department dept : departmentList){
    %>
    <option value=<%=dept.getDno()%>><%=dept.getDname()%></option>
    <%
        }
    %>
    </select><br><br>
    生日：<input name="s_birthday" type="date"><br><br>
    <button type="submit" value="Submit">确认</button>
</form>
</body>
</html>
