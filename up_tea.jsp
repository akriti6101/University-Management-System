<%@page import="Teacher.Bean.*" %>
<%@ page import="Teacher.Demo.*" %>
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



<center><h3><u><em><i>Update Teacher's Details </i></em></u></h3></center>

<%TeacherDemo demo=new TeacherDemo();

ArrayList<Teacher> ls=new ArrayList<Teacher>();
String st=request.getParameter("id2");
Teacher s=new Teacher();
s=demo.getTea(st);
%>
<div class="div4">


   <b class="b3">Select Teacher's ID</b>
   <input class="s1" name="id1" id="id">
    
    <button class="sub8" type="submit" ">UPDATE</button>

</div>

<div class="out">
<br/><br/>
<div class="div1">
<form action="up_te_again.jsp">
<br/>
Name :<input name="tea_name"class="d1" id="name" type="text" pattern="[A-Z a-z \s]+"><br/><br/>
Age:<input name="tea_age"class="d1" id="age" type="text" pattern="[0-9]+"><br/><br/>
Address: <input name="tea_add"class="d1"  id="add"type="text" pattern="[A-Z , a-z \s 0-9]+"><br/><br/>
Email ID: <input name="tea_email"class="d1" id="email"type="text" pattern="[a-z &*$ # \. - \s / 0-9 ]+[@][a-z & 0-9 - \.]+[.][a-z ]+"> <br/><br/>
Class XII(%)Marks:<input  name="tea_xii" class="d1"  id="xii"type="text" pattern="[0-9 .]+"><br/><br/>

Education :<select name="edu"class="d1" id="edu">
<option>select------</option>
<option value="btech">BTECH</option>
<option value="bcom">BCOM</option>
<option value="mtech">MTECH</option>
<option value="mba">MBA</option>
<option value="mca">MCA</option>
<option value="bba">BBA</option>
</select>

</div>

<div class="div2">
<br/><br/>
Father's Name :<input  name="tea_father"class="d2" id="father" type="text" pattern="[A-Z a-z \s]+"><br/><br/>
Date Of Birth(dd/mm/yy):<input name="tea_dob" class="d2" id="dob"type="text" pattern="[0-9 /]+"><br/><br/>
Phone Number: <input class="d2" name="tea_phone" id="tel"type="text" pattern="[7-9][0-9]{9}"><br/><br/>
Class X(%) Marks: <input name="tea_x"class="d2" id="x"type="text" pattern="[0-9 \.]+"><br/><br/>
Employee ID :<input   class="d2" name="tea_id" id="id1"type="text" pattern="[ A-Z a-z - 0-9 /]+"><br/><br/>
Aadhar No :<input name="tea_aadhar" class="d2" id="aadhar"type="text" pattern="[0-9]{12}"><br/><br/>
Department:<select name="dept"class="d2" id="dept">
<option>select---</option>
<option value="cse">CSE</option>
<option value="it">IT</option>
<option value="ece">ECE</option>
<option value="aieee">AIEEE</option>
<option value="mech">MECHANICAL</option>
<option value="civil">CIVIL </option>
</select>
</div>

<button class="sub"type="submit">SUBMIT</button></form>
<button class="can" type="button" onclick="cancel()" >CANCEL</button>


</div>


<script type="text/javascript">

document.getElementById("id").value="<%=s.getEmployee_Id()%>";
<%session.setAttribute("id",s.getEmployee_Id()); %>
document.getElementById("name").value="<%=s.getName()%>";
document.getElementById("age").value="<%=s.getAge()%>";
document.getElementById("add").value="<%=s.getAddress()%>";
document.getElementById("email").value="<%=s.getEmail()%>";
document.getElementById("xii").value="<%=s.getClass_xii()%>";
document.getElementById("edu").value="<%=s.getEducation()%>";

document.getElementById("father").value="<%=s.getFather_Name()%>";
document.getElementById("dob").value="<%=s.getDob()%>";
document.getElementById("tel").value="<%=s.getPhone_Number()%>";
document.getElementById("x").value="<%=s.getClass_x()%>";
document.getElementById("id1").value="<%=s.getEmployee_Id()%>";
document.getElementById("aadhar").value="<%=s.getAadhar_No()%>";
document.getElementById("dept").value="<%=s.getDepartment()%>";
</script>




</body>
</html>