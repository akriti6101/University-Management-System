<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="style2.css">
<script type="text/javascript">
function fun1()
{
	window.location.replace("data_tea.jsp");}

function fun2()
{
	window.location.replace("enter_tea_marks.jsp");}

function fun3()
{
	window.location.replace("exam_tea_marks.jsp");}

function cancel()
{
	   window.location.replace("login.jsp");
}

</script>
</head>
<body>
 
<button type="button" onclick="cancel()" >Back</button>


<div class="out">
  <img src="uni.jpg" >
  <div class="in">
  <button name="admin" id="per"   type="button" class="b1" onclick="fun1()">PERSONAL DETAILS</button>
  <button name="stud" id="ex" class="b2" onclick="fun2()" type="button">ENTER  MARKS</button>
<button name="stud" id="vi" class="b3" onclick="fun3()" type="button">VIEW MARKS</button>
  </div>
</div>
</body>
</html>