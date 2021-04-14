<%@page import="Student.Bean.*" %>
<%@ page import="Student.Demo.*" %>
<%@ page import="java.util.*" %>
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
String m=request.getParameter("r");
int r=demo.del(m);


if(r==1){
%>
<script type="text/javascript">

alert("Data Deleted successfully!!!");
window.location.replace("home.html");
</script>
<%} else{%><script type="text/javascript">alert("Some error occured");
window.location.replace("home.html");
</script>

<%} %>
</body>
</html>