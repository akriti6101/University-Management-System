<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!--  Name,age,address,email,class 12,roll no,branch,father ,dob,phone,class x,aadhar no,course -->
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
<div class="out"><center><h3><u><em><i>STUDENT REGISTRATION FORM</i></em></u></h3></center>
<br/><br/>
<div class="div1">
<form action="stud_dis.jsp" method="post">
Name :<input name="stud_name"class="d1"type="text" pattern="[A-Z][a-z A-Z \s]+"><br/><br/>
Age:<input name="stud_age"class="d1" type="text" pattern="[0-9]+"><br/><br/>
Address: <input name="stud_add"class="d1" type="text" pattern="[A-z a-z 0-9 - \s ,]+" ><br/><br/>
Email ID: <input name="stud_email"class="d1" type="text" pattern="[a-z - & $ .\s 0-9]+[@][a-z]+[.][a-z]+" > <br/><br/>
Class XII(%)Marks:<input  name="stud_xii" class="d1"  type="text" pattern="[0-9 .]+"><br/><br/>
Roll No :<input   class="d1" name="stud_roll" type="text" pattern="[a-z / 0-9]+"><br/><br/>
Branch :<select name="branch"class="d1">
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
Father's Name :<input  name="stud_father"class="d2" type="text" pattern="[A-Z][a-z A-Z \s]+"><br/><br/>
Date Of Birth(dd/mm/yy):<input name="stud_dob" class="d2" type="text" pattern="[0-9 /]+"><br/><br/>
Phone Number: <input class="d2" name="stud_phone" type="text" pattern="[7-9][0-9]{9}"><br/><br/>
Class X(%) Marks: <input name="stud_x"class="d2" type="text" pattern="[0-9 .]+"><br/><br/>

Aadhar No :<input name="stud_aadhar" class="d2" type="text" pattern="[0-9]{12}"><br/><br/>
Course :<select name="course"class="d2">
<option>select---</option>
<option value="bba">BBA</option>
<option value="bca">BCA</option>
<option value="btech">BTECH</option>
<option value="bsc">BSC</option>
<option value="mca">MCA</option>
<option value="msc">MSC</option>
</select><br/>
</div>

<button class="sub"type="submit">SUBMIT</button></form>
<button class="can" type="button" onclick="cancel()" >CANCEL</button>


</div>



</body>

</html>