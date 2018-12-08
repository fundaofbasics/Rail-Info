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
			<h3>Registration Failed!!</h3><br><br>
		  <table  border="0" align="center">
  <tr>
      <tr><td><img src="img/sory.jpg" height=150 width=150></td></tr>
	  <tr><td>&nbsp;</td></tr>
	  <tr><td>Registration Failed!!</td></tr>
	 <tr><td>&nbsp;</td></tr>
	  <td valign="top"><div align="center"><font color=red><h3>Please Try Again!!<h3></font></div></td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td><a href="Register.jsp"><input type=submit Value="Back To Register"></a></td></tr>
    
   
  </table>				
					</div>
					</div>
<%@ include file="html/footer.html" %>

  </body>
</html>
