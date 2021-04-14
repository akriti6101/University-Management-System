<%@page import="Student.Bean.*" %>
<%@ page import="Student.Demo.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
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
 
Student s=new Student();
String id=request.getParameter("roll");
String p=request.getParameter("atten");
int r=0; 
r=demo.setatten(id,p);
if(r!=0){
%>
<script type="text/javascript">

alert("Attendance Submitted successfully!!!");
window.location.replace("home.html");
</script>
<%} else{%><script type="text/javascript">alert("Some error occured");
window.location.replace("home.html");
</script>
<%} %>
</body>
</html>