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
<div class="div3">

 <form action="exam_details.jsp">
   <b class="b3">Select Student's Roll No</b>
   <select class="s1" name="roll1" id="roll">
   <option>select---</option>
   <%for(Student s:ls){ %>
   <option value=<%=s.getRoll() %>><%=s.getRoll() %></option>
   <%} %>
   
   </select>
    <button class="sub8" type="submit" ">RESULT</button>
 </form>
   <table >
   <tr>
   <b ><th class="b4">Subjects</th></b>
   <b ><th class="b5">Marks</th></b>
   </tr>
   <tr >
   <td><input type="text" class="t1"  id="sub1"></td>
    <td><input type="text" class="t11"  id="ms1"></td></tr>
   
    <tr >
   <td><input type="text" class="t2" id="sub2"></td>
    <td><input type="text" class="t12" id="ms2"></td></tr>
    <tr >
   <td><input type="text" class="t3" id="sub3"></td>
    <td><input type="text" class="t13" id="ms3"></td></tr>
   
   <tr >
   <td><input type="text" class="t4" id="sub4"></td>
    <td><input type="text" class="t14" id="ms4"></td></tr>
    
    <tr >
   <td><input type="text" class="t5" id="sub5"></td>
    <td><input type="text" class="t15" id="ms5"></td></tr>
   </table>
 
<button class="can2" type="button" onclick="cancel()" >CANCEL</button>
   
</div>

</body>
</html>