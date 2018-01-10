<%@ page import="com.coursedesign.vo.student_vo.courseVo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 15:35
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
    <title>退选</title>
</head>
<body>

<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/chooseCourse.do">选课</a>  <a href="/admin/unChoose.do">退选</a></div>

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
        <td><%=cv.getCname()%></a></td>
        <td><%=cv.getPlace()%></td>
        <td><%=cv.getWeektime()%></td>
        <td><%=cv.getCredit()%></td>
        <td><%=cv.getGalleryful()%></td>
        <td><%=cv.getTeacherName()%></td>
        <td><a href="/admin/deleteSC.do?cno=<%=cv.getCno()%>">退选</a></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
