<%@page import="Teacher.Bean.*" %>
<%@ page import="Teacher.Demo.*" %>
<%@ page import="java.util.*" %>


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
	   window.location.replace("home.html");
   }</script>

</head>
<body>
<button type="button" onclick="cancel()" >Back</button>
<%TeacherDemo demo=new TeacherDemo();

ArrayList<Teacher> ls=new ArrayList<Teacher>();
ls=demo.getList();
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
<th>Education </th>

<th>Father's Name</th>
<th>Dob</th>
<th>Phone Number</th>
<th>Class X(%)</th>
<th>Employee Id</th>
<th>Aadhar No.</th>
<th>Department</th>
</tr>

<%if(ls!=null){ for(Teacher s:ls){%>
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

<%} 
}%>




</table>


</div>


</body>
</html>