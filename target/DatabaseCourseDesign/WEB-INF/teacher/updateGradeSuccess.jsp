<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/8
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>添加成功</title>
</head>
<body>
<%
    Map scMap = (Map) session.getAttribute("scMap");
    String cno = (String) scMap.get("cno");
    response.sendRedirect("/teacher/grade_student.do?cno="+cno);
%>
</body>
</html>
