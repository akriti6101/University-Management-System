<%@page import="Teacher.Bean.*" %>
<%@ page import="Teacher.Demo.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>	University Management System</title>

<link rel="stylesheet" href="style.css">

<script type="text/javascript">
   function cancel()
   {
	   window.location.replace("home.html");
   }</script>

</head>
<body>

<%TeacherDemo  demo=new TeacherDemo();

ArrayList<Tea> ls=new ArrayList<Tea>();
ls=demo.getAttenList();
%>
<button type="button" onclick="cancel()" >Back</button>

<div >
<center><h3>Teacher's Attendance Details</h3></center>
<table>
<tr>

<th>Employee ID</th>
<th>Date</th>
<th>Attendance</th>

</tr>
<%
if(ls!=null)
{ 
	for(Tea s: ls)
	{%>
	<tr>
	<td><%=s.getEmployee_ID()%></td>
	<td><%=s.getDate()%></td>
	<td><%=s.getAttendance() %></td>
	
	</tr>
	<% }
}
%>
</table>


</div>



</body>
</html>