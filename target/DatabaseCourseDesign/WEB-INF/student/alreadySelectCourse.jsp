<%@ page import="com.coursedesign.vo.student_vo.courseVo" %>
<%@ page import="java.util.List" %>
<%@ page import="com.coursedesign.vo.student_vo.courseGradeVo" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/30
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<courseVo> courseVoList = (List<courseVo>) session.getAttribute("courseVoList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>已选课程</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/student/logout.do">退出登录</a>
    <a href="/student/backtoStudentIndex.do">个人首页</a>
</div>
<div>导航栏:</div>
<div><a href="/student/showCanSelectCourse.do">个人选课</a>   <a href="/student/alreadyCourse.do">已选课程</a>   <a href="/student/courseGrade.do">课程成绩</a></div>

已选的课程：

<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>课程名</th>
        <th>地点</th>
        <th>时间</th>
        <th>学分</th>
        <th>容纳人数</th>
        <th>授课教师</th>
        <th>退选</th>
    </tr>
    <%  int len=courseVoList.size();
        for(int i=0;i<len;i++){
            courseVo cv = courseVoList.get(i);
    %>
    <tr>
        <td><a href="/student/courseDesc.do?cno=<%=cv.getCno()%>"><%=cv.getCname()%></a></td>
        <td><%=cv.getPlace()%></td>
        <td><%=cv.getWeektime()%></td>
        <td><%=cv.getCredit()%></td>
        <td><%=cv.getGalleryful()%></td>
        <td><%=cv.getTeacherName()%></td>
        <td><a href="/student/unselectCourse.do?cno=<%=cv.getCno()%>">退选</a></td>
    </tr>
    <%
        }
    %>
</table>


</body>
</html>
