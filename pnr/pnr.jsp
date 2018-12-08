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
<%@ page import="java.sql.*"%>  
<%@ page import="p1.DBInfo"%>  
<%@ include file="../html1/nav.html" %>
 <%
  
   String pnr=request.getParameter("pnr");
   String p="";
   String s1="";
   String s2="";
   String s3="";
   String s4="";
   String s5="";
   String s6="";
   String s7="";
   String s8="";
   String s9="";
   String s10="";
   String s11="";
   String s12="";
   String s13="";
    Connection con=DBInfo.getConnection();
		String query="select * from pnr where pnrn=?";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,pnr);
	   ResultSet res=ps.executeQuery();
		while(res.next())
		{
		p=res.getString(1);
		s1=res.getString(2);
		s2=res.getString(3);
		s3=res.getString(4);
		s4=res.getString(5);
		s5=res.getString(6);
		s6=res.getString(7);
		s7=res.getString(8);
		s8=res.getString(9);
		s9=res.getString(10);
		s10=res.getString(11);
		s11=res.getString(12);
		s12=res.getString(13);
		s13=res.getString(14);
		}
    %>
<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>PNR STATUS </h3><br><br>
<%
if(p!=null &&p!="")
{
%>
 <table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td  valign="top" width="100%" height="355">
<h4><strong> </strong><br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" >
<tr>
  <td colspan=2 align=center><b><font size=4px> Current Status  : </td><td><font size=4px> Confirmed</td>    
   <TR><TD>&nbsp;</TD></TR>
   <TR><TD>&nbsp;</TD></TR>
   <tr>
  <td><b> PNR Number  : </td><td> <%=p%></td>       
  <td><b> Train Number  : </td><td> <%=s1%></td>       </tr>
  <tr><td><b> Train Name : </td><td> <%=s2%></td> 
 <td><b> From  :  </td><td> <%=s3%></td>       </tr>
  <tr><td><b>  To : </td><td> <%=s4%></td> <td><b> Journey Date : </td><td> <%=s5%></td> </tr>      
 <tr><td><b> Passenger Name  : </td><td> <%=s6%></td> <td><b> Age  : </td><td> <%=s7%></td> </tr>      
  <tr><td><b> Gender  : </td><td> <%=s8%></td> <td><b> Berth  Number : </td><td> <%=s9%></td> </tr>    
  <tr><td><b> Fare  : </td><td> <%=s13%></td><td><b> Nationality : </td><td> <%=s10%></td> </tr>   
  <tr><td><b>  ID Card Type : </td><td> <%=s11%></td> <td><b> ID Card Number  : </td><td> <%=s12%></td> </tr> 
         <tbody><tr>
	
  </table>
  
<%
}
else
{
%>
<center>PNR Dose not Match...!</center>

<%
}
%>  
	 <tr> <td>&nbsp;</td> </tr>

         
        </tr></tr></table></form>
		</td></tr></table>			
		<div class="clearfix"> </div>
		
		</div>
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

  </body></html>
