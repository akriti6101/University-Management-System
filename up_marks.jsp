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
<title>Insert title here</title>
</head>
<body>
<%StudentDemo demo=new StudentDemo();

Student s=new Student();
s.setRoll(request.getParameter("roll"));
s.setSub1(request.getParameter("sub1"));
s.setSub2(request.getParameter("sub2"));
s.setSub3(request.getParameter("sub3"));
s.setSub4(request.getParameter("sub4"));
s.setSub5(request.getParameter("sub5"));
s.setM_S1(request.getParameter("ms1"));
s.setM_S2(request.getParameter("ms2"));
s.setM_S3(request.getParameter("ms3"));
s.setM_S4(request.getParameter("ms4"));
s.setM_S5(request.getParameter("ms5"));
int r=0; 
r=demo.upMarks(s);
if(r!=0){
%>
<script type="text/javascript">

alert("Marks Submitted successfully!!!");
window.location.replace("home.html");
</script>
<%} else{%><script type="text/javascript">alert("Some error occured");
window.location.replace("home.html");
</script>
<%} %>
</body>
</html>