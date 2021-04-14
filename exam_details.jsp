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
	   window.location.replace("home.html");
   }</script>

</head>
<body>



<div class="div3">

 
   <b class="b3">Student's Roll No</b>
   <input class="s1" name="roll" id="roll">

    <button class="sub8" type="button">RESULT</button>
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

<%StudentDemo demo=new StudentDemo();

Student s=new Student();
String st=request.getParameter("roll1");
s=demo.getStud(st);

%>



<script type="text/javascript">

document.getElementById("roll").value="<%=s.getRoll()%>";
document.getElementById("sub1").value="<%=s.getSub1()%>";
document.getElementById("sub2").value="<%=s.getSub2()%>";
document.getElementById("sub3").value="<%=s.getSub3()%>";
document.getElementById("sub4").value="<%=s.getSub4()%>";
document.getElementById("sub5").value="<%=s.getSub5()%>";
document.getElementById("ms1").value="<%=s.getM_S1()%>";
document.getElementById("ms2").value="<%=s.getM_S2()%>";
document.getElementById("ms3").value="<%=s.getM_S3()%>";
document.getElementById("ms4").value="<%=s.getM_S4()%>";
document.getElementById("ms5").value="<%=s.getM_S5()%>";
</script>


</body>
</html>