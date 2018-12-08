<jsp:useBean id="obj" class="p1.Feedback">
<jsp:setProperty property="*" name="obj"/>
</jsp:useBean>
<html>
<head>
<title>RailInfo.com| Feedback</title>
<%@ include file="../html1/include.html" %>
</head>
<%@ include file="../html1/nav.html" %>

  <%
    int i=obj.feedback();
    
  
   %>
 

<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Thanks For Your Feedback!!</h3><br><br>
 <br>				 
  <table  border="0" align="center">
  <tr>
      <tr><td><img src="fb.png" height=150 width=150></td></tr>
	  <tr><td>&nbsp;</td></tr>
	  <td valign="top"></td>
      <tr><td>&nbsp;</td></tr>
	  <td valign="top"><div align="center"><font color=red><h4>Your Feedback Received Succesfully! <h3></font></div></td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td><a href="../index.jsp"><input type=submit Value="Back To Home"></a></td></tr>
    
   
  </table>
<div class="clearfix"> </div>
</div>
</div>
<!-- //contact -->
  
 <%@ include file="../html1/footer.html" %>
 </body>
</html>
