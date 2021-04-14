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
	   window.location.replace("tea_home.jsp");
   }</script>

</head>
<body>

<%StudentDemo demo=new StudentDemo();

ArrayList<Student> ls=new ArrayList<Student>();
ls=demo.getList();
%>
<div class="div3">
<form action="up_marks.jsp">
   <b class="b3">Select Student's Roll No</b>
   <select class="s1" name="roll">
   <option>select---</option>
   <%for(Student s:ls){ %>
   <option value=<%=s.getRoll() %>><%=s.getRoll() %></option>
   <%} %>
   </select>
   <table >
   <tr>
   <b ><th class="b4">Enter Subjects</th></b>
   <b ><th class="b5">Enter Marks</th></b>
   </tr>
   <tr >
   <td><input type="text" class="t1" name="sub1"></td>
    <td><input type="text" class="t11" name="ms1"></td></tr>
   
    <tr >
   <td><input type="text" class="t2" name="sub2"></td>
    <td><input type="text" class="t12" name="ms2"></td></tr>
    <tr >
   <td><input type="text" class="t3" name="sub3"></td>
    <td><input type="text" class="t13" name="ms3"></td></tr>
   
   <tr >
   <td><input type="text" class="t4" name="sub4"></td>
    <td><input type="text" class="t14" name="ms4"></td></tr>
    
    <tr >
   <td><input type="text" class="t5" name="sub5"></td>
    <td><input type="text" class="t15" name="ms5"></td></tr>
   </table>
   <button class="sub2"type="submit">SUBMIT</button></form>
<button class="can2" type="button" onclick="cancel()" >CANCEL</button>
   
</div>


</body>
</html>