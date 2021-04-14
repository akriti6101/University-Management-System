<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>University Management System</title>
<link rel="stylesheet" href="style1.css">
<script type="text/javascript">
function check()
{var u=document.getElementById("user").value;
var pa=document.getElementById("pass").value;

	if(u=="admin")
			{
		        if(pa!="12345")
		        {
		    		alert("Invalid Username or Password!!!");
		    		document.getElementById("user").value="";
		    		document.getElementById("pass").value="";
		    		 return false;
		    		}
		        else
	        	{
		        	return true;
	        	}
		        
			}
	else if((pa=="12345"))
			{
		        if(u!="admin")
		        {
		    		alert("Invalid Username or Password!!!");
		    		document.getElementById("user").value="";
		    		document.getElementById("pass").value="";
		    		 return false;
		    		}
		       
			}
	else if(u!="admin" && pa!="12345")
			{
		    		alert("Invalid Username or Password!!!");
		    		document.getElementById("user").value="";
		    		document.getElementById("pass").value="";
		    		 return false;
		    		}
			
	

		
		}
		
		function cancel()
		{
			window.location.replace("login.jsp");
		}
</script>
</head>
<body>
<div class="out">
  <img src="uni.jpg" >
  <div class="in1">
  <br/><br/>
  <form   onsubmit="return check()" method="post"  action="home.html" >
    &nbsp;&nbsp;UserName :<input type="text" name="user" id="user"class="i1">
    <br/><br/>
      &nbsp;&nbsp;Password:<input type="password" name="pass" id="pass"class="i1">
    <br/><br/>
    <button class="b12" type="submit" >LOGIN</button>
 
     </form>
     <button class="b11" onclick="cancel()">CANCEL</button>
     
  </div>
</div>
</body>
</html>