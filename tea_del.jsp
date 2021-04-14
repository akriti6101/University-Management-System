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

<center><h3><u><em><i>Delete Teacher's Details </i></em></u></h3></center>

<%TeacherDemo demo=new TeacherDemo();

ArrayList<Teacher> ls=new ArrayList<Teacher>();
ls=demo.getList();
%>
<div class="div8">
<div class="div4" >

 <form action="t_del.jsp">
 <br/><br/>
   <b class="b3">Select Teacher's ID</b>
   <select class="s1" name="r1" id="r1">
   <option>select---</option>
   <%for(Teacher s:ls){ %>
   <option value=<%=s.getEmployee_Id() %>><%=s.getEmployee_Id() %></option>
   <%} %>
   
   </select>
    <button class="sub8" type="submit" ">DELETE</button>
    <button class="can8" type="button" onclick="cancel()" >CANCEL</button>
 </form>
 </div>
</div>

</body>
</html>