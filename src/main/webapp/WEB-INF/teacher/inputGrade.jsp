<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/8
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>录入成绩</title>
</head>
<body>
<div class="login">
    <div class="message">请输入成绩</div>
    <form action="/teacher/updateGrade2.do" method="post">
        <select id="newGrade" name="newGrade">
            <%
                int i=0;
                while(i<=100){
            %>
            <option value=<%=i%>><%=i%></option>
            <%
                    i++;
                }
            %>
        </select>
        <input value="确认"  type="submit">
    </form>
</div>

</body>
</html>
