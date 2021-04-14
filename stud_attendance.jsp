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
   <div class="d3"><center><h4><u><em><i>STUDENT ATTENDANCE FORM</i></em></u></h4></center>

   
   <form action="cal_stud_atten.jsp">
     <b class="b1">Roll No :</b><select name="roll">
     <option>select-----</option>
     <%for(Student s: ls){ %>
     
     <option value=<%=s.getRoll() %>><%=s.getRoll() %></option>
     
     <%} %>
    
     </select>
  
   <b class="b2">Attendance :</b><select name="atten">
     <option>select---</option>
     <option value="Present">Present</option>
     <option value="Absent">Absent</option>
     </select>

   <button class="sub1"type="submit">SUBMIT</button></form>
<button class="can1" type="button" onclick="cancel()" >CANCEL</button>
   
   
   </div>

</body>
</html>