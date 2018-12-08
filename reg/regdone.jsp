<%@ page import="java.sql.*"%>  
<%@ page import="p1.DBInfo"%>  
<html>
<head>
<title>RailInfo.com| Registration Done</title>
<%@ include file="../html1/include.html" %>
</head>
<%@ include file="../html1/nav.html" %>
<%
 String s1=request.getParameter("uid");
 String s2=request.getParameter("id");
 String s3=request.getParameter("pass");
 String query="select * from login where uid=? and id=? and pass=? ";
 String str="";
 String str1="";
 String str2="";
 
 Connection con=DBInfo.getConnection();
            PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, s1);
			ps.setString(2, s2);
			ps.setString(3, s3);
		    ResultSet res= ps.executeQuery();
 while(res.next())
 {
  str=res.getString(1);
  str1=res.getString(2);
  str2=res.getString(3);
 
 }
		
		if(s1.equals(str1)  &&  s2.equals(str) && s3.equals(str2) )
			{
			String query1="update login set status=? where id=? ";
		
		Connection con1=DBInfo.getConnection();
		
		
		
			PreparedStatement ps1=con.prepareStatement(query1);
			ps1.setString(1, "true");
			ps1.setString(2, s2);
		     ps1.executeUpdate();
			%>
		  <div class="contact">
		<div class="container">
			<h3>Thanks!!!</h3><br><br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">

        <tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
	  
  <table  border="0" align="center">
  <tr>
      <tr><td><img src="fb.png" height=150 width=150></td></tr>
	  <tr><td>&nbsp;</td></tr>
	  <td valign="top">Thanks For Register!!</td>
      <tr><td>&nbsp;</td></tr>
	  <td valign="top"><div align="center"><font color=red>Registration Done Succesfully! </font></div></td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td><a href="reservation.jsp"><input type=submit Value="Back To Login"></a></td></tr>
    
   
  </table>		

  				  </td></tr></table>
		</div>	
	</div>   
		<%
			}
			else
			{
		%>
	  <div class="contact">
		<div class="container">
			<h3>Sorry!!!</h3><br><br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">

        <tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
	 
  <table  border="0" align="center">
  <tr>
      <tr><td><img src="fb.png" height=150 width=150></td></tr>
	  <tr><td>&nbsp;</td></tr>
	  <td valign="top">Registration Failed!!</td>
      <tr><td>&nbsp;</td></tr>
	  <td valign="top"><div align="center"><font color=red>Please Try Again!! </font></div></td></tr>
      <tr><td>&nbsp;</td></tr>
      <tr><td><a href="reg.jsp"><input type=submit Value="Back To Register"></a></td></tr>
    
   
  </table>		
				  </td></tr></table>
		</div>	
	</div>
     <%
	 }
				
			
	
	%>		
					
  
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

</body>
</html>
