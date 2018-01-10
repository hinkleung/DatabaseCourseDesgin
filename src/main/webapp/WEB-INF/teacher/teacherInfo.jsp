<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/7
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Teacher teacher = (Teacher) session.getAttribute("teacher");
    SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>教师个人信息</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/teacher/logout.do">退出登录</a>
    <a href="/teacher/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/teacher/myCourse.do">我的授课</a>   <a href="/teacher/grade_course.do">录入成绩</a>  </div>
<div>个人信息：</div>
<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>工号</th>
        <th>姓名</th>
        <th>性别</th>
        <th>生日</th>
        <th>职称</th>
    </tr>

    <tr>

        <td><%=teacher.getTid()%></td>
        <td><%=teacher.getTname()%></td>
        <td><%=teacher.gettSex()%></td>
        <td><%=formatter.format(teacher.gettBirthday())%></td>
        <td><%=teacher.gettTitle()%></td>

    </tr>

</table>

</body>
</html>
