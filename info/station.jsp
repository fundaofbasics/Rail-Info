<!DOCTYPE html>
<html>
<head>
<%@ include file="../html1/include.html" %>
<title>RailInfo.com| Enquiry</title>
<%@ include file="../html1/nav.html" %>
<script>
function validateForm()
{
var x=document.forms["myForm"]["stname"].value;
if (x==null || x=="")
  {
  alert("Station Name must be filled out");
  return false;
  }
}
</script>
</head>
<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Station Code Enquiry</h3><br><br>
   <h4> 		 <strong></strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
<form name="myForm" action="" onsubmit="return validateForm();" method="post">
		  <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td>&nbsp;</td></tr>
          <tr><td align="center" colspan=2><h4>Please enter name of station <strong>OR</strong> few characters of the station name.</td></tr>
          <tr><td>&nbsp;</td></tr>
          <tr><td width="42%">&nbsp;<h4>Station Name:</td><td width="58%"><label>
              <input name="stname" size="15" maxlength="15" type="text">
            </label></td></tr>
          <tr><td >&nbsp;</td></tr>
<tr><h4><td align="center" colspan=2><input name="submit" value="Get Code" type="submit">
              &nbsp;<input name="Reset" value="Clear" type="reset"></td></tr>
          <tr><td>&nbsp;</td></tr>
</tbody></table>
</form>
</td></tr></table>		
		</div>
	</div>
<!-- //contact -->
<%@ include file="../html1/footer.html" %>
</body>
</html>