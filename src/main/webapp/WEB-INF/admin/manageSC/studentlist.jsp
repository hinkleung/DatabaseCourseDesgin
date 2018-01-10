<%@ page import="com.coursedesign.pojo.Department" %>
<%@ page import="com.coursedesign.vo.student_vo.Studentinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Department> departmentList = (List<Department>) session.getAttribute("departmentList");
    List<Studentinfo> studentList = (List<Studentinfo>)session.getAttribute("studentList");
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>选课</title>
</head>
<body>

<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/chooseCourse.do">选课</a>  <a href="/admin/unChoose.do">退选</a></div>
<div>查找需要选课的学生</div><br>
<span>请选择条件</span><br>
<form action="/admin/FindStudent.do" method="post">
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
    学号：<input type="text" name="sid" id="sid" value=""><br>
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
        <td><a href="/admin/canChooseCourse.do?sid=<%=studentinfo.getSid()%>">查看可选课程</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
