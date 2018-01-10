<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/29
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>登录失败</title>
</head>
<body>
<div id="navbar" class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
        <li>登录失败：</li>
        <li>帐号不存在或者密码错误</li>
        <li><a href="../index.jsp">返回登录页面</a></li>
        <li>3秒后自动跳转</li>
        <meta http-equiv=refresh content="3;url=index.jsp">

    </ul>
</div><!--/.nav-collapse -->
</body>
</html>
