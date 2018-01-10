<%@ page import="com.coursedesign.pojo.Department" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/9
  Time: 21:24
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
    <title>查询学生</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addStudent.do">添加学生</a>  <a href="/admin/selectStudent.do">查询学生</a></div>
<span>请选择条件</span><br>
<form action="/admin/selectStudentByCondition.do" method="post">
    学院：
    <select name="dno" id="dno">
        <option value="" selected="selected"></option>
    <%
        for(Department dept : departmentList){
    %>
    <option value=<%=dept.getDno()%>><%=dept.getDname()%></option>
    <%
        }
    %>
    </select><br>
    学生名字：<input type="text" name="sname" id="sname" value=""><br>
    学号：<input type="text" name="sid" id="sid" value="">
    <br>
    <input type="submit" value="查询" id="submit">
</form>

</body>
</html>
