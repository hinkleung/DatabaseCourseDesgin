<%@ page language="java" pageEncoding="utf8" %>
<%@ page contentType="text/html; charset=utf8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <title>学生管理系统登录界面</title>
    <link href="css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="login">
    <div class="message">请登录</div>
    <div id="darkbannerwrap"></div>

    <form action="/login.do" method="post">
        <input name="action" value="login" type="hidden">
        <div>帐号</div><input name="username" placeholder="学号/工号" required="required" type="text">
        <hr class="hr15">
        <div>密码</div><input name="password" placeholder="密码" required="required" type="password">
        <hr class="hr15">
        <label><input name="role" type="radio" value="student" checked="checked"/>学生</label><hr class="hr15">
        <label><input name="role" type="radio" value="teacher" />教师</label><hr class="hr15">
        <label><input name="role" type="radio" value="admin" />管理员</label><hr class="hr15">
        <input value="登录" style="width:100%;" type="submit">
        <hr class="hr20">
    </form>


</div>

</body>
</html>