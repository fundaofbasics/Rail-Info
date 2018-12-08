<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Forget</title>
<%@ include file="../html1/include.html" %>
<script>
function validateForm()
{
var x=document.forms["myForm"]["email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
var x=document.forms["myForm"]["cname"].value;
if (x==null || x=="")
  {
  alert("Please Enter Captcha Code");
  return false;
  }
}
</script>
 </head>
<%@ include file="../html1/nav.html" %>

<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Forget Password</h3><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
 <tbody><tr>
  <td align="left" valign="top" width="100%" height="355">
 <h4><strong></strong><br><br><br>
<form name="myForm" action="" onsubmit="return validateForm();" method="post">
		   <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
        
         <tr> <td align="left" valign="top"  > Email :</td><td ><input type="text" name="email" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr><td >&nbsp;</td> <td colspan="2">	<img src="../captcha/captcha.jsp"/>
     	  </td> </tr>
          <tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Captcha :</td><td ><input type="text" name="cname" size="10"> </td></tr>
          <tr> <td>&nbsp;</td> </tr>
           <tr><td colspan="2">&nbsp;</td></tr>
          <tr><td colspan="2" align="center"><input name="submit" value="Submit"  type="submit">&nbsp;
           <input name="Reset" value="Clear" type="reset"></td>
</table></form>
				  </td></tr></table>
		</div>	
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

</body>
</html>