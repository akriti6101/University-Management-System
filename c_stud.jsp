<%@page import="Student.Bean.*" %>
<%@ page import="Student.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University Management System</title>
</head>
<body>

<%StudentDemo demo=new StudentDemo();
String u=request.getParameter("u");

String p=request.getParameter("p");
session.setAttribute("u",u);
session.setAttribute("p",p);
int r=demo.check(u,p);
if(r==1)
{
%>
<script type="text/javascript">

window.location.replace("stud_home.html");</script>
<%} else{%>
<script>alert("Invalid  Name or Roll!!!");
window.location.replace("check_stud.jsp");
</script>
<%} %>
</body>
</html>