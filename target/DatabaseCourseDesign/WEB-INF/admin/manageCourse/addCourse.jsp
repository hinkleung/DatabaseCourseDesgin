<%@ page import="com.coursedesign.pojo.Teacher" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Teacher> teacherList = (List<Teacher>)session.getAttribute("teacherList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>添加课程</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div style="font-size: 25px">课程管理</div>
<div>导航栏:</div>
<div><a href="/admin/addCourse.do">添加课程</a>  <a href="/admin/selectCourse.do">查询课程</a></div>
<div>填写课程资料</div>
<form action="/admin/insertCourse.do" method="post">
    课程号：<input name="cno" type="text"><br><br>
    课程名：<input name="cname" type="text"><br><br>
    地点：<input name="place" type="text"><br><br>
    时间：<input name="weektime" type="text"><br><br>
    学分：<input name="credit" type="text"><br><br>
    容纳人数：<input name="galleryful" type="text"><br><br>
    课程介绍：<input name="c_desc" type="text"><br><br>
    授课教师：
    <select name="tid" id="tid">
        <%
            for(Teacher teacher:teacherList){
        %>
        <option value=<%=teacher.getTid()%>><%=teacher.getTname()%></option>
        <%
            }
        %>
    </select><br><br>
    <button type="submit" value="Submit">确认</button>
</form>

</body>
</html>
