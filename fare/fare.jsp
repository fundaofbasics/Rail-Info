<html>
<head>
<title>RailInfo.com| Book</title>
<%@ include file="../html1/include.html" %>
<script>
function validateForm()
{
   
var x=document.forms["myForm"]["from"].value;
if (x==null || x=="")
  {
  alert("Enter From Station");
  return false;
  }  

var x=document.forms["myForm"]["to"].value;
if (x==null || x=="")
  {
  alert("Enter To Station");
  return false;
  }
  
var x=document.forms["myForm"]["day"].value;
if (x==null || x=="")
  {
  alert("Enter Day");
  return false;
  }
  
var x=document.forms["myForm"]["month"].value;
if (x==null || x=="")
  {
  alert("Enter Month");
  return false;
  }
  
var x=document.forms["myForm"]["year"].value;
if (x==null || x=="")
  {
  alert("Enter Year");
  return false;
  }

  
var x=document.forms["myForm"]["tt"].value;
if (x==null || x=="")
  {
  alert("Select Ticket Type");
  return false;
  }

}
</script>
</head>
<%@ include file="../html1/nav.html" %>
<%@ page import="java.sql.*"%>  
<%@ page import="p1.DBInfo"%>  

 <%
  int fare=0;
  String p="";
  String q="";
   String s1=request.getParameter("tn");
   String s2=request.getParameter("stn");
   String s3=request.getParameter("dtn");
   String s4=request.getParameter("classopt");
   String s5=request.getParameter("quota");
  
    Connection con=DBInfo.getConnection();
		String query="select ss,gen from fare where t_no=? and src=? and dest=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,s1);
		ps.setString(2,s2);
		ps.setString(3,s3);
	   ResultSet res=ps.executeQuery();
		while(res.next())
		{
		
		p=res.getString(1);
		q=res.getString(2);
		
		}
		int i=Integer.parseInt(p);
		int j=Integer.parseInt(q);
		
		if(s4.equals("AC"))
		{
		if(s5.equals("GN"))
		{
		fare=(i*20/100)+i;
		%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%
		}
		if(s5.equals("TT"))
		{
		fare=(i*20/100)+i+100;
			%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%
		}
		}
		
		else if(s4.equals("SL"))
		{
		if(s5.equals("GN"))
		{
		fare=(i*10/100)+i;
			%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%}
		if(s5.equals("TT"))
		{
		fare=(i*10/100)+i+100;
			%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%}
		}
		else if(s4.equals("SS"))
		{
		if(s5.equals("GN"))
		{
		fare=i;
	%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%	}
		if(s5.equals("TT"))
		{
		fare=i+100;
		%><br><br><center><h3>FARE DETAILS</h3><br><br>

 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="50%" align="center" >

   <tr>
  <th>Train Number</th> <th>Source</th> <th>Destination</th> <th>Class</th> <th>Quota</th> <th>Fair</th><body><tr>
	<TR><TD><%=s1%></TD><TD><%=s2%></TD><TD><%=s3%></TD><TD><%=s4%></TD><TD><%=s5%></TD><TD><%=fare%></TD></TR>
  </table>
  


	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table>
		<%	}
		}
	else
{	
    %>
Trian Not Avialable<%}%>
			</form>
		</td></tr></table>			
		<div class="clearfix"> </div>
		
		</div>
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

  </body></html>
