<%@page import="Teacher.Bean.*" %>
<%@ page import="Teacher.Demo.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>University Management System</title>
<link rel="stylesheet" href="style.css">

<script type="text/javascript">
   function cancel()
   {
	   window.location.replace("tea_home.jsp");
   }</script>

</head>
<body>

<button type="button" onclick="cancel()" >Back</button>
<%String u=(String)session.getAttribute("user"); 
String p=(String)session.getAttribute("pt");
		Teacher s=new Teacher();
		TeacherDemo demo=new TeacherDemo();
		s=demo.getTeaDetails(u,p); 
%>


<div >
<center><h3>Teacher's Details</h3></center>
<table>
<tr>
<th>Name</th>
<th>Age</th>
<th>Address</th>
<th>Email Id</th>
<th>Class XII(%)</th>
<th>Education</th>

<th>Father's Name</th>
<th>Dob</th>
<th>Phone Number</th>
<th>Class X(%)</th>

<th>Employee ID</th>
<th>Aadhar No.</th>
<th>Department</th>
</tr>


<tr>
<td><%=s.getName() %></td>
<td><%=s.getAge() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getClass_xii() %></td>
<td><%=s.getEducation() %></td>

<td><%=s.getFather_Name() %></td>
<td><%=s.getDob() %></td>
<td><%=s.getPhone_Number() %></td>
<td><%=s.getClass_x() %></td>
<td><%=s.getEmployee_Id() %></td>
<td><%=s.getAadhar_No() %></td>
<td><%=s.getDepartment() %></td><tr/>



</body>
</html>