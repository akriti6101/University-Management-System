<%@page import="Student.Bean.*" %>
<%@ page import="Student.Demo.*" %>
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
	   window.location.replace("stud_home.html");
   }</script>

</head>
<body>
<button type="button" onclick="cancel()" >Back</button>
<%String u=(String)session.getAttribute("u"); 
String p=(String)session.getAttribute("p");
		Student s=new Student();
		StudentDemo demo=new StudentDemo();
s=demo.getStudDetails(u,p); 
%>


<div >
<center><h3>Student's Details</h3></center>
<table>
<tr>
<th>Name</th>
<th>Age</th>
<th>Address</th>
<th>Email Id</th>
<th>Class XII(%)</th>
<th>Roll No</th>
<th>Branch</th>
<th>Father's Name</th>
<th>Dob</th>
<th>Phone Number</th>
<th>Class X(%)</th>
<th>Aadhar No.</th>
<th>Course</th>
</tr>

<tr>
<td><%=s.getName() %></td>
<td><%=s.getAge() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getClass_xii() %></td>
<td><%=s.getRoll() %></td>
<td><%=s.getBranch() %></td>
<td><%=s.getFather_Name() %></td>
<td><%=s.getDob() %></td>
<td><%=s.getPhone_Number() %></td>
<td><%=s.getClass_x() %></td>
<td><%=s.getAadhar_No() %></td>
<td><%=s.getCourse() %></td><tr/>


</table>


</div>

</body>
</html>