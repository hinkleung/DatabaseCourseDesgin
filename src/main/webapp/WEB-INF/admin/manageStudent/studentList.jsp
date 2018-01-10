<%@ page import="com.coursedesign.vo.student_vo.Studentinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.coursedesign.pojo.Department" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/9
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Studentinfo> studentList = (List<Studentinfo>)session.getAttribute("studentList");
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
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
<form action="/admin/selectStudentByCondition.do">
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
<table border="1" id="studentTable" width="800px" height="70px">
    <tr>
        <th>姓名</th>
        <th>学号</th>
        <th>性别</th>
        <th>学院</th>
        <th>生日</th>
        <th></th>
        <th></th>
    </tr>
    <%
        for(Studentinfo studentinfo:studentList){
    %>
    <tr>

        <td><%=studentinfo.getSname()%></td>
        <td><%=studentinfo.getSid()%></td>
        <td><%=studentinfo.getsSex()%></td>
        <td><%=studentinfo.getDept()%></td>
        <td><%=formatter.format(studentinfo.getsBirthday())%></td>
        <td><a href="/admin/changeStudentInfo.do?sid=<%=studentinfo.getSid()%>">修改信息</a></td>
        <td><a href="/admin/deleteStudent.do?sid=<%=studentinfo.getSid()%>">删除学生</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
