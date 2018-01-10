<%@ page import="com.coursedesign.pojo.Student" %>
<%@ page import="com.coursedesign.vo.student_vo.Studentinfo" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/30
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Studentinfo studentinfo = (Studentinfo)session.getAttribute("studentinfo");
    SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>学生个人信息</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/student/logout.do">退出登录</a>
    <a href="/student/backtoStudentIndex.do">个人首页</a>
</div>

<div>导航栏:</div>
<div><a href="/student/showCanSelectCourse.do">个人选课</a>   <a href="/student/alreadyCourse.do">已选课程</a>   <a href="/student/courseGrade.do">课程成绩</a></div>


<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>姓名</th>
        <th>学号</th>
        <th>性别</th>
        <th>学院</th>
        <th>生日</th>
    </tr>

    <tr>

        <td><%=studentinfo.getSname()%></td>
        <td><%=studentinfo.getSid()%></td>
        <td><%=studentinfo.getsSex()%></td>
        <td><%=studentinfo.getDept()%></td>
        <td><%=formatter.format(studentinfo.getsBirthday())%></td>

    </tr>

</table>
</body>
</html>
