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


<div class="out"><center><h3><u><em><i>TEACHER REGISTRATION FORM</i></em></u></h3></center>
<br/><br/>
<div class="div1">
<form action="tea_dis.jsp">
Name :<input name="tea_name"class="d1"type="text" pattern="[A-Z a-z \s]+"><br/><br/>
Age:<input name="tea_age"class="d1" type="text" pattern="[0-9]+"><br/><br/>
Address: <input name="tea_add"class="d1" type="text" pattern="[A-Z , a-z \s 0-9]+"><br/><br/>
Email ID: <input name="tea_email"class="d1" type="text" pattern="[a-z &*$ # \. - \s / 0-9 ]+[@][a-z & 0-9 - \.]+[.][a-z ]+"> <br/><br/>
Class XII(%)Marks:<input  name="tea_xii" class="d1"  type="text" pattern="[0-9 .]+"><br/><br/>

Education :<select name="edu"class="d1">
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
Father's Name :<input  name="tea_father"class="d2" type="text" pattern="[A-Z a-z \s]+"><br/><br/>
Date Of Birth(dd/mm/yy):<input name="tea_dob" class="d2" type="text" pattern="[0-9 /]+"><br/><br/>
Phone Number: <input class="d2" name="tea_phone" type="text" pattern="[7-9][0-9]{9}"><br/><br/>
Class X(%) Marks: <input name="tea_x"class="d2" type="text" pattern="[0-9 \.]+"><br/><br/>
Employee ID :<input   class="d2" name="tea_id" type="text" pattern="[ A-Z a-z - 0-9 /]+"><br/><br/>
Aadhar No :<input name="tea_aadhar" class="d2" type="text" pattern="[0-9]{12}"><br/><br/>
Department:<select name="dept"class="d2">
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




</body>
</html>