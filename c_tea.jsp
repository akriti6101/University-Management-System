
<%@page import="Teacher.Bean.*" %>
<%@ page import="Teacher.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%TeacherDemo demo=new TeacherDemo();
String u=request.getParameter("ut");
session.setAttribute("user", u);
String p=request.getParameter("pt");
session.setAttribute("pt", p);
int r=demo.check(u,p);
if(r==1)
{
%>
<script type="text/javascript">

window.location.replace("tea_home.jsp");</script>
<%} else{%>
<script>alert("Invalid  Name or ID!!!");
window.location.replace("check_tea.jsp");
</script>
<%} %>

</body>
</html>