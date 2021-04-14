<%@page import="Teacher.Demo.*" %>
<%@page import="Teacher.Bean.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University Management System</title>
</head>
<body>
<% TeacherDemo demo=new TeacherDemo();

Teacher s=new Teacher();
s.setName(request.getParameter("tea_name"));

s.setAge(request.getParameter("tea_age"));
s.setAddress(request.getParameter("tea_add"));
s.setEmail(request.getParameter("tea_email"));
s.setClass_xii(request.getParameter("tea_xii"));
s.setEducation(request.getParameter("edu"));
s.setFather_Name(request.getParameter("tea_father"));
s.setDob(request.getParameter("tea_dob"));
s.setPhone_Number(request.getParameter("tea_phone"));

s.setClass_x(request.getParameter("tea_x"));
s.setEmployee_Id(request.getParameter("tea_id"));
s.setAadhar_No(request.getParameter("tea_aadhar"));
s.setDepartment(request.getParameter("dept"));
int r=demo.setData(s);
if(r==1){
%>
<script type="text/javascript">

alert("Data Submitted successfully!!!");
window.location.replace("home.html");
</script>
<%} else{%><script type="text/javascript">alert("Some error occured");
window.location.replace("home.html");
</script>

<%} %>
</body>
</html>