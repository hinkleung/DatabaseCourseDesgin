<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 0:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Teacher> teacherList = (List<Teacher>)session.getAttribute("teacherList");
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>查询教师</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addTeacher.do">添加教师</a>  <a href="/admin/selectTeacher.do">查询教师</a></div>
<span>请选择条件</span><br>
<form action="/admin/selectTeacherByCondition.do" method="post">
    教师名字：<input type="text" name="tname" id="tname" value=""><br>
    教师工号：<input type="text" name="tid" id="tid" value=""><br>
    职称：<input type="text" name="t_title" id="t_title" value=""><br>
    <input type="submit" value="查询" id="submit">
</form>


<table border="1" id="teacherTable" width="800px" height="70px">
    <tr>
        <th>教师工号</th>
        <th>名字</th>
        <th>性别</th>
        <th>生日</th>
        <th>职称</th>
        <th></th>
        <th></th>
    </tr>
    <%
        for(Teacher teacher:teacherList){
    %>
    <tr>

        <td><%=teacher.getTid()%></td>
        <td><%=teacher.getTname()%></td>
        <td><%=teacher.gettSex()%></td>
        <td><%=formatter.format(teacher.gettBirthday())%></td>
        <td><%=teacher.gettTitle()%></td>
        <td><a href="/admin/changeTeacherInfo.do?tid=<%=teacher.getTid()%>">修改信息</a></td>
        <td><a href="/admin/deleteTeacher.do?tid=<%=teacher.getTid()%>">删除教师</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>

