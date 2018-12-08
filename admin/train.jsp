<html>
<head>
<title>RailInfo.com| Feedback</title>
<%@ include file="../html1/include.html" %>
</head>
<%@ include file="../html1/nav.html" %>
  
  <%
    String s1=request.getParameter("id");
 %>
<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Change Password</h3><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td valign="top" width="100%" height="355">
<h4><strong>  </strong><br><br><br>
<form name="myForm" action="train/train.jsp" onsubmit="return validateForm();" method="post">
 <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
         
		 <tr> <td valign="top"  > Old Password :</td><td ><input type="text" size="20" name="from"> </td></tr>
<tr> <td>&nbsp;</td> </tr><tr> <td valign="top"  > New Password :</td><td ><input type="text" size="20" name="to"> </td></tr>
<tr> <td>&nbsp;</td> </tr><tr> <td valign="top"  > Confirm Password :</td><td ><input type="text" size="20" name="to"> </td></tr>
          <tr> <td>&nbsp;</td> </tr>
	                  <td colspan="2" align=center><input name="getIt" value="Update" type="submit">
                      <input name="clear" value="Clear" type="reset"></td></tr>
</table>
</form>
</td></tr></table>
		</div>
	</div>
<!-- //contact -->
<%@ include file="html/footer.html" %>

  </body>
</html>
