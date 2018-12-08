<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Forget</title>
<%@ include file="../html1/include.html" %>
</head>
<body class="cbp-spmenu-push">
			<div class="header">
			<div class="container">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">Rail Info <span>A Cool Travel</span></a>
			</div>
<div class="clearfix"> </div>
			 </div>
			</div>
<%@ page import="java.sql.*"%>  
<%@ page import="p1.DBInfo"%>  
 <% 
    String str=request.getParameter("cname");
	String str1=(String)session.getAttribute("captchacode");
	String id="";
	for(int i=0;i<=5;i++)
	{
	id+=(int)(Math.random()*9)+1;
	}
	if(str.equals(str1))
	{

     String uid=request.getParameter("uid");
	 String pass=request.getParameter("pass");
	 String repass=request.getParameter("repass");
	 String sq=request.getParameter("sq");
	 String ans=request.getParameter("ans");
	 String fn=request.getParameter("fname");
	 String mn=request.getParameter("mname");
	 String ln=request.getParameter("lname");
	 String email=request.getParameter("email");
	 String mob=request.getParameter("mob");
	 String hom=request.getParameter("home");
	 String d=request.getParameter("day");
	 String m=request.getParameter("month");
	 String y=request.getParameter("year");
	 String gen=request.getParameter("gen");
	 String mary=request.getParameter("mary");
	 String occ=request.getParameter("occ");
	 String ad=request.getParameter("adar");
	 String pan=request.getParameter("pan");
	 String nat=request.getParameter("nat");
	 String add=request.getParameter("add");
	 String cont=request.getParameter("contry");
	 String pin=request.getParameter("pin");
	 String stat=request.getParameter("stat"); 
	 String city=request.getParameter("city"); 
	 String utype=request.getParameter("utype"); 
	 
	 	Connection con=DBInfo.getConnection();
		String query="insert into register values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String query1="insert into login values(?,?,?,?,?)";
		
		String dob=d+"/"+m+"/"+y;	
	
	if(pass.equals(repass))
	{	
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, id);
			ps.setString(2, sq);
			ps.setString(3, ans);
			ps.setString(4, fn);
			ps.setString(5, mn);
			ps.setString(6, ln);
			ps.setString(7, email);
			ps.setString(8, mob);
			ps.setString(9, hom);
			ps.setString(10, dob);
			ps.setString(11, gen);
			ps.setString(12, mary);
			ps.setString(13, occ);
			ps.setString(14, ad);
			ps.setString(15, pan);
			ps.setString(16, nat);
			ps.setString(17, add);
			ps.setString(18, cont);
			ps.setString(19, pin);
			ps.setString(20, stat);
			ps.setString(21, city);
			ps.executeUpdate();
			ps.close();
			
			
		
			PreparedStatement ps1=con.prepareStatement(query1);
			ps1.setString(1, id);
		    ps1.setString(2, uid);
			ps1.setString(3, pass);
			ps1.setString(4, utype);
			ps1.setString(5, "false");
			ps1.executeUpdate();
			ps1.close();

	
	

	 
	 String msg="Your Verification Code is= "+id+" Your User ID is= "+uid+"       And Password is= "+pass+"      Verify your email using Verification Code    ";
	%>
<!-- contact -->
	<div class="contact">
		<div class="container">
			<table border="0" cellpadding="0" cellspacing="0" width="100%">

        <tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
			 

			 
<form action="../servlet/SendMail" method="post">
<table align=center>
<center><tr><td>	 <h4><strong> If You Doesn't Redirect in 5 Seconds Then Click On the Button Below</strong></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td align=center><img src="../images/pro.gif" hieght=300 width=300 align=center /><br/><br/></td></tr>
    <input name="to" type="hidden" id="to" width="500" value="<%=email%>" />
    <input name="subject" type="hidden" id="subject" value="This Message From RailInfo.com to verify your Account " width="500"/>
    <input type="hidden" name="msg" id="msg" value="<%=msg%>" rows="7" cols="120">
    <input type="hidden" name="id" id="id" value="<%=id%>" rows="7" cols="120">
<tr><td>&nbsp;</td></tr>
   <tr><td align=center> <input type="submit" name="submit" value="Continue"  /></td></tr>

</table>
   
 </td> </tr>
</table>
</form>

</div>
  </div>
  




<%
}
	
	else
	{
	response.sendRedirect("reg1.jsp");
	}

	}
	else
	{
	response.sendRedirect("reg1.jsp");
	}
	
System.out.println(id);
	
 
	%>


     
<!-- footer -->
	<div class="footer">
		<div class="container">
		
		<p>Copyright &copy; 2016 RailInfo.com All rights reserved | Design and Hosted by <a href="#">RailInfo Team</a></p>
		</div>
	</div>
<!-- //footer -->



</body>
</html>
