<%@page import="Student.Bean.*" %>
<%@ page import="Student.Demo.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="style.css">

<script type="text/javascript">
   function cancel()
   {
	   window.location.replace("home.html");
   }</script>

</head>
<body>

<%StudentDemo demo=new StudentDemo();

ArrayList<Stu> ls=new ArrayList<Stu>();
ls=demo.getAttenList();
%>
<button type="button" onclick="cancel()" >Back</button>

<div >
<center><h3>Student's Attendance Details</h3></center>
<table>
<tr>

<th>Roll No</th>
<th>Date</th>
<th>Attendance</th>

</tr>
<%
if(ls!=null)
{ 
	for(Stu s: ls)
	{%>
	<tr>
	<td><%=s.getRoll_No()%></td>
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