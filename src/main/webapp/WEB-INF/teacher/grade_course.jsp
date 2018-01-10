<%@ page import="com.coursedesign.pojo.Course" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/8
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Course> mycourseList = (List<Course>) session.getAttribute("mycourseList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>录入成绩</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/teacher/logout.do">退出登录</a>
    <a href="/teacher/backtoindex.do">个人主页</a>

</div>
<div>导航栏:</div>
<div><a href="/teacher/myCourse.do">我的授课</a>   <a href="/teacher/grade_course.do">录入成绩</a>  </div>
<div>请选择要录入成绩的课程：</div>
<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>课程号</th>
        <th>课程名</th>
        <th></th>
    </tr>

    <%
        for(int i=0;i<mycourseList.size();i++){
            Course course = mycourseList.get(i);
    %>
    <tr>
        <td><%=course.getCno()%></td>
        <td><%=course.getCname()%></td>
        <td><a href="/teacher/grade_student.do?cno=<%=course.getCno()%>">录入成绩</a></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
