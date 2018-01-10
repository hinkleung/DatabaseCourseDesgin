<%@ page import="com.coursedesign.pojo.Department" %>
<%@ page import="java.util.List" %>
<%@ page import="com.coursedesign.vo.admin_vo.StuInfo" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/9
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Department> departmentList = (List<Department>) session.getAttribute("departmentList");
    StuInfo stuInfo = (StuInfo) session.getAttribute("stuInfo");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>修改学生信息</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addStudent.do">添加学生</a>  <a href="/admin/selectStudent.do">查询学生</a></div>
<div>修改学生资料:</div>
<form action="/admin/updateStudentInfo.do" method="post">
    学生姓名：<input name="sname" type="text" value=<%=stuInfo.getSname()%>><br><br>
    学号：<input name="sid" type="text" readonly="readonly" value=<%=stuInfo.getSid()%>><br><br>
    性别：<input name="s_sex" type="text" value=<%=stuInfo.getsSex()%>><br><br>
    密码：<input name="s_pwd" type="text" value=<%=stuInfo.getSpwd()%>><br><br>
    学院：
    <select name="dno" id="dno" >
        <%
            for(Department dept : departmentList){
        %>
        <%
            if(dept.getDno().equals(stuInfo.getDno())){
        %>
        <option selected="selected" value=<%=dept.getDno()%>><%=dept.getDname()%></option>
        <%
            }else{
        %>
        <option value=<%=dept.getDno()%>><%=dept.getDname()%></option>
        <%
            }}
        %>
    </select><br><br>
    生日：<input name="s_birthday" type="date"><br><br>
    <button type="submit" value="Submit">确认修改</button>
</form>
</body>
</html>
