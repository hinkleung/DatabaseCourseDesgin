<%@ page import="com.coursedesign.vo.student_vo.Studentinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/8
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Studentinfo> studentinfoList = (List<Studentinfo>)session.getAttribute("studentinfoList");
    SimpleDateFormat formatter = new SimpleDateFormat ("yyyy-MM-dd");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>学生列表</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/teacher/logout.do">退出登录</a>
    <a href="/teacher/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/teacher/myCourse.do">我的授课</a>   <a href="/teacher/grade_course.do">录入成绩</a>  </div>
<div>学生列表：</div>
<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>姓名</th>
        <th>学号</th>
        <th>性别</th>
        <th>学院</th>
        <th>生日</th>
    </tr>
    <%
        for(int i=0;i<studentinfoList.size();i++){
            Studentinfo studentinfo = studentinfoList.get(i);
    %>
    <tr>

        <td><%=studentinfo.getSname()%></td>
        <td><%=studentinfo.getSid()%></td>
        <td><%=studentinfo.getsSex()%></td>
        <td><%=studentinfo.getDept()%></td>
        <td><%=formatter.format(studentinfo.getsBirthday())%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
