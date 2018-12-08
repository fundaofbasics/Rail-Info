<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Login</title>
<%@ include file="../html1/include.html" %>
<%@ include file="../html1/nav.html" %>
<script>
function validateForm()
{
var x=document.forms["myForm"]["uid"].value;
if (x==null || x=="")
  {
  alert("Enter User ID");
  return false;
  }
  
var x=document.forms["myForm"]["pass"].value;
if (x==null || x=="")
  {
  alert("Enter Password");
  return false;
  }
  
var x=document.forms["myForm"]["captcha"].value;
if (x==null || x=="")
  {
  alert("Enter Captcha Code");
  return false;
  }
}  
</script>
</head>

<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Reservation</h3><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td align="left" valign="top" width="100%" height="355">
 <h4><strong>Login :</strong><br><br><br>
<form name="myForm" action="../user/user.jsp" onsubmit="return validateForm();" method="post">
<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
         <tr> <td align="left" valign="top"  > User ID  :</td><td ><input type="text" name="uid" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td align="left" valign="top"  > Password :</td><td ><input type="password" name="pass" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td >&nbsp;</td> <td colspan="2">	<img src="../captcha/captcha.jsp"/></td> </tr>
         <tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Captcha :</td><td ><input type="text" name="captcha" size="10"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td colspan="2">&nbsp;</td></tr>
         <tr> <td colspan="2" align="center"><input name="submit" value="Login"  type="submit">&nbsp;
          <input name="Reset"  value="Clear" type="reset"></td>
 <tr> <td>&nbsp;</td> </tr>
 <tr> <td><a href="forget.jsp"><font color="#4169E1">Forget Password Click Here</font></a></td> </tr>
 <tr> <td>&nbsp;</td> </tr>
 <tr> <td><font color="#800000">New User Register Here</font></td> </tr>
 <tr> <td>&nbsp;</td> </tr>
 <tr> <td><a href="reg.jsp"><image src="../images/reg.jpg"></a></td> </tr>
</table></form>
</td></tr></table>
		</div>	
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

</body>
</html>