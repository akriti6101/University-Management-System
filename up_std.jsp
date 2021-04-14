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


<center><h3><u><em><i>Update Student's Details </i></em></u></h3></center>

<%StudentDemo demo=new StudentDemo();

ArrayList<Student> ls=new ArrayList<Student>();
String st=request.getParameter("roll1");
Student s=new Student();
s=demo.getStud(st);
%>
<div class="div4">


   <b class="b3">Select Student's Roll No</b>
   <input class="s1" name="roll1" id="roll">
    
    <button class="sub8" type="submit" ">UPDATE</button>
 
</div>
<div class="out">
<br/><br/>

<div class="div1">
<form action="up_again.jsp">

<br/>
Name :<input name="stud_name" id="name"class="d1"type="text" pattern="[A-Z][a-z A-Z \s]+"><br/><br/>
Age:<input name="stud_age" id="age"class="d1" type="text" pattern="[0-9]+"><br/><br/>
Address: <input name="stud_add" id="add"class="d1" type="text" pattern="[A-z a-z 0-9 - \s]+" ><br/><br/>
Email ID: <input name="stud_email" id="email"class="d1" type="text" pattern="[a-z - & $ .\s 0-9]+[@][a-z]+[.][a-z]+" > <br/><br/>
Class XII(%)Marks:<input  name="stud_xii" id="xii"class="d1"  type="text" pattern="[0-9 .]+"><br/><br/>
Roll No :<input   class="d1" name="stud_roll" id="roll2" type="text" pattern="[a-z / 0-9]+"><br/><br/>
Branch :<select name="branch"class="d1" id="branch">
<option>select---</option>
<option value="cse">CSE</option>
<option value="it">IT</option>
<option value="ece">ECE</option>
<option value="aieee">AIEEE</option>
<option value="mech">MECHANICAL</option>
<option value="civil">CIVIL </option>
</select>



</div>

<div class="div2">
<br/><br/>
Father's Name :<input  id="father"name="stud_father"class="d2" type="text" pattern="[A-Z][a-z A-Z \s]+"><br/><br/>
Date Of Birth(dd/mm/yy):<input id="dob"name="stud_dob" class="d2" type="text" pattern="[0-9 /]+"><br/><br/>
Phone Number: <input class="d2" id="tel"name="stud_phone" type="text" pattern="[7-9][0-9]{9}"><br/><br/>
Class X(%) Marks: <input name="stud_x" id="x" class="d2" type="text" pattern="[0-9 .]+"><br/><br/>

Aadhar No :<input name="stud_aadhar" id="aadhar"class="d2" type="text" pattern="[0-9]{12}"><br/><br/>
Course :<select name="course"class="d2" id="course">
<option>select---</option>
<option value="bba">BBA</option>
<option value="bca">BCA</option>
<option value="btech">BTECH</option>
<option value="bsc">BSC</option>
<option value="mca">MCA</option>
<option value="msc">MSC</option>
</select>
<br/>
</div>

<br/><br/>
 <button class="sub2"type="submit">SUBMIT</button></form>
<button class="can2" type="button" onclick="cancel()" >CANCEL</button>


</div>


<script type="text/javascript">

document.getElementById("roll").value="<%=s.getRoll()%>";
<%session.setAttribute("roll1",s.getRoll()); %>
document.getElementById("name").value="<%=s.getName()%>";
document.getElementById("age").value="<%=s.getAge()%>";
document.getElementById("add").value="<%=s.getAddress()%>";
document.getElementById("email").value="<%=s.getEmail()%>";
document.getElementById("xii").value="<%=s.getClass_xii()%>";
document.getElementById("roll2").value="<%=s.getRoll()%>";
document.getElementById("branch").value="<%=s.getBranch()%>";
document.getElementById("father").value="<%=s.getFather_Name()%>";
document.getElementById("dob").value="<%=s.getDob()%>";
document.getElementById("tel").value="<%=s.getPhone_Number()%>";
document.getElementById("x").value="<%=s.getClass_x()%>";
document.getElementById("aadhar").value="<%=s.getAadhar_No()%>";
document.getElementById("course").value="<%=s.getCourse()%>";
</script>



</body>
</html>