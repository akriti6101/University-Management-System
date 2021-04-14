<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University Management System</title>
<link rel="stylesheet" href="style1.css">
<script type="text/javascript">
function fun1()
{
	window.location.replace("check_add.jsp");
	}
function fun2()
{
	window.location.replace("check_stud.jsp");
	}
function fun3()
{
	window.location.replace("check_tea.jsp");
	}
	
	</script>
</head>
<body>
<center><h3 style="background-color:black;color:white;font-family:cursive;"><u><em><i>OXFORD UNIVERSITY ,LONDON </i></em></u></h3></center>
<div class="out">
  <img src="uni.jpg" >
  <div class="in">
  <button name="admin" id="admin"  class="b1" onclick="fun1()">ADMIN</button>
  <button name="stud" id="stud" class="b2" onclick="fun2()">STUDENT</button>
  <button name="tea" id="tea" class="b3" onclick="fun3()">TEACHER</button>
  </div>
</div>
</body>
</html>