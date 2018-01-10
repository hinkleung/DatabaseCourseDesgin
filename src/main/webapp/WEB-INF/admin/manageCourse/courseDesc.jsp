<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/10
  Time: 13:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String desc = (String)session.getAttribute("cdesc");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>课程介绍</title>
</head>
<body>

<div align="right" style="font-size:16px">
    <a href="/admin/logout.do">退出登录</a>
    <a href="/admin/backtoindex.do">个人主页</a>
</div>
<div>导航栏:</div>
<div><a href="/admin/addCourse.do">添加课程</a>  <a href="/admin/selectCourse.do">查询课程</a></div>
<div></div>
<div>课程介绍:</div>
<div><%=desc%></div>
</body>
</html>
