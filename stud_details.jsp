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

ArrayList<Student> ls=new ArrayList<Student>();
ls=demo.getList();
%>
<button type="button" onclick="cancel()" >Back</button>

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
<%if(ls!=null){ for(Student s:ls){%>
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
<%} 
}%>
</table>


</div>

</body>
</html>