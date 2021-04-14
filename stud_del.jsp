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

<center><h3><u><em><i>Delete Student's Details </i></em></u></h3></center>

<%StudentDemo demo=new StudentDemo();

ArrayList<Student> ls=new ArrayList<Student>();
ls=demo.getList();
%>
<div class="div8">
<div class="div4" >

 <form action="s_del.jsp">
 <br/><br/>
   <b class="b3">Select Student's Roll No</b>
   <select class="s1" name="r" id="r">
   <option>select---</option>
   <%for(Student s:ls){ %>
   <option value=<%=s.getRoll() %>><%=s.getRoll() %></option>
   <%} %>
   
   </select>
    <button class="sub8" type="submit" ">DELETE</button>
    <button class="can8" type="button" onclick="cancel()" >CANCEL</button>
 </form>
 </div>
</div>
</body>
</html>