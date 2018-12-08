<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Admin</title>
<%@ include file="html/include.html" %>
</head>
<div class="header">
			<div class="container">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Rail Info <span>A Cool Travel</span></a>
			</div>
			</div>
			</div>
<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>Admin Section</h3><br><br>
<%@ page import="java.sql.*"%>  
<%@ page import="p1.DBInfo"%>  
<%
String s3="";
String s4="";
String str=request.getParameter("captcha");
String str1=(String)session.getAttribute("captchacode");
	if(str.equals(str1))
	{
String s1=request.getParameter("uid");
String s2=request.getParameter("pass");
	
Connection con=DBInfo.getConnection();
		String query="select * from admin";
		PreparedStatement ps=con.prepareStatement(query);
			ResultSet res=ps.executeQuery();
while(res.next())
	{
	s3=res.getString(1);
	s4=res.getString(2);
	
	}
	if(s1.equals(s3) && s2.equals(s4))
	{
	  response.sendRedirect("index.jsp?id="+s1);
	}
	else
	{
		response.sendRedirect("fail.jsp?id="+s1); 
	}
	
%>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td align="left" valign="top" width="100%" height="355">
 <h4><strong>Login :</strong><br><br><br>
<form name="myForm" action="admin1.jsp" onsubmit="return validateForm();" method="post">
<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
         <tr> <td align="left" valign="top"  > User ID  :</td><td ><input type="text" name="uid" size="20" maxlength="5"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td align="left" valign="top"  > Password :</td><td ><input type="password" name="pass" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td >&nbsp;</td> <td colspan="2">	<img src="../captcha/captcha.jsp"/></td> </tr>
         <tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Captcha :</td><td ><input type="text" name="captcha" size="10"> </td></tr>
         <tr> <td>&nbsp;</td> </tr>
         <tr> <td colspan="2">&nbsp;</td></tr>
         <tr> <td colspan="2" align="center"><input name="submit" value="Login"  type="submit">&nbsp;
          <input name="Reset"  value="Clear" type="reset"></td>

</table></form>
</td></tr></table>
</div>	
	</div>
<%
}
	
	else
	{
	response.sendRedirect("fail.jsp");
	}
		
	
 
	%>			
<%@ include file="html/footer.html" %>

    </body>
</html>
