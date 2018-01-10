<%@ page import="com.coursedesign.vo.student_vo.courseGradeVo" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/12/30
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<courseGradeVo> courseGradeList = (List<courseGradeVo>)session.getAttribute("courseGradeList");
%>
<html>
<style>
    a:hover,a:visited{color: #1f6dff;}
</style>
<head>
    <title>成绩列表</title>
</head>
<body>
<div align="right" style="font-size:16px">
    <a href="/student/logout.do">退出登录</a>
    <a href="/student/backtoStudentIndex.do">个人首页</a>
</div>
<div>导航栏:</div>
<div><a href="/student/showCanSelectCourse.do">个人选课</a>   <a href="/student/alreadyCourse.do">已选课程</a>   <a href="/student/courseGrade.do">课程成绩</a></div>

课程成绩表：

<table border="1" id="courseTable" width="800px" height="70px">
    <tr>
        <th>学号</th>
        <th>课程名</th>
        <th>学分</th>
        <th>成绩</th>
    </tr>
    <%  int len=courseGradeList.size();
        for(int i=0;i<len;i++){
            courseGradeVo cgv = courseGradeList.get(i);
    %>
    <tr>
        <td><%=cgv.getSid()%></td>
        <td><a href="/student/courseDesc.do?cno=<%=cgv.getCno()%>"><%=cgv.getCname()%></a></td>
        <td><%=cgv.getCredit()%></td>
        <td>
            <%
                if(cgv.getGrade()==null){
            %>
                未登记成绩
            <%
                }else{
            %>
                <%=cgv.getGrade()%>
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
