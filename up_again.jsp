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
Student s=new Student ();
String m=(String)session.getAttribute("roll1");
s.setName(request.getParameter("stud_name"));

s.setAge(request.getParameter("stud_age"));
s.setAddress(request.getParameter("stud_add"));
s.setEmail(request.getParameter("stud_email"));
s.setClass_xii(request.getParameter("stud_xii"));
s.setRoll(request.getParameter("stud_roll"));

s.setBranch(request.getParameter("branch"));
s.setFather_Name(request.getParameter("stud_father"));
s.setDob(request.getParameter("stud_dob"));
s.setPhone_Number(request.getParameter("stud_phone"));

s.setClass_x(request.getParameter("stud_x"));
s.setAadhar_No(request.getParameter("stud_aadhar"));
s.setCourse(request.getParameter("course"));
int r=demo.UpdateData(s,m);

if(r==1){
%>
<script type="text/javascript">

alert("Data Updated successfully!!!");
window.location.replace("home.html");
</script>
<%} else{%><script type="text/javascript">alert("Some error occured");
window.location.replace("home.html");
</script>

<%} %>
</body>
</html>