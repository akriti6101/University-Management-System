<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University Management System</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>

<div class="out">
  <img src="uni.jpg" >
  <div class="in1">
  <br/><br/>
  <form    method="post"  action="c_tea.jsp" >
    &nbsp;&nbsp;Name :<input type="text" name="ut" id="user"class="i1">
    <br/><br/>
      &nbsp;&nbsp;Employee_ID:<input type="password" name="pt" id="pass"class="i1">
    <br/><br/>
    <button class="b12" type="submit" >LOGIN</button>
 
     </form>
     <button class="b11" onclick="cancel()">CANCEL</button>
     
  </div>
</div>

<script type="text/javascript">

		
		function cancel()
		{
			window.location.replace("login.jsp");
		}
</script>
</body>
</html>