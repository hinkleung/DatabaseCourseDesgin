<%@ page import="com.coursedesign.vo.student_vo.Studentinfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.coursedesign.vo.teacher_vo.sc_gradeVo" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2018/1/8
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<sc_gradeVo> scGradeVoList = (List<sc_gradeVo>) session.getAttribute("scGradeVoList");
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
<div>学生列表：</div>
<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>学号</th>
        <th>姓名</th>
        <th>课程号</th>
        <th>课程名</th>
        <th>成绩</th>
    </tr>
    <%
        for(int i=0;i<scGradeVoList.size();i++){
            sc_gradeVo scg = scGradeVoList.get(i);
    %>
    <tr>
        <td><%=scg.getSid()%></td>
        <td><%=scg.getSname()%></td>
        <td><%=scg.getCno()%></td>
        <td><%=scg.getCname()%></td>
        <td>
            <%
                if(scg.getGrade()==null){
            %>
                <a href="/teacher/updateGrade.do?sid=<%=scg.getSid()%>&cno=<%=scg.getCno()%>">添加成绩</a>
            <%
                }else{
            %>
                <%=scg.getGrade()%>
            <%
                }
            %>

        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
