<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Forget</title>
<%@ include file="../html1/include.html" %>
<script> function validateForm()
{
var x=document.forms["myForm"]["uid"].value;
if (x==null || x=="")
  {
  alert("UserID must be filled out");
  return false;
  }
var x=document.forms["myForm"]["id"].value;
if (x==null || x=="")
  {
  alert("Verification Code must be filled out");
  return false;
  }
var x=document.forms["myForm"]["pass"].value;
if (x==null || x=="")
  {
  alert("Password must be filled out");
  return false;
  }
}  </script>
</head>
<%@ include file="../html1/nav.html" %>

<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Verify Account</h3><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
 <form name="myForm" onsubmit="return validateForm();" action=regdone.jsp method="post" " >
		 <h4><strong></strong><br><br><br>
		   <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
<tr> <td align="left" valign="top"  > User ID :</td><td ><input type="text" name="uid" size="20"> </td></tr>
<tr> <td>&nbsp;</td> </tr>
		 <tr> <td align="left" valign="top"  > Verification Code :</td><td ><input type="text" name="id" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
		 <tr> <td align="left" valign="top"  > Password :</td><td ><input type="password" name="pass" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>

<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2" align="center"><input name="submit"  value="Submit"  type="submit">&nbsp;
 <input name="Reset"  value="Clear" type="reset"></td></tr>
</table>
				        </form>
			   </td></tr></table>
		</div>	
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

</body>
</html>
							
					
			

