<!DOCTYPE html>
<html>
<head>
<title>RailInfo.com| Register</title>
<%@ include file="../html1/include.html" %>
<script>
function validateForm()
{
var x=document.forms["myForm"]["uid"].value;
if (x==null || x=="")
  {
  alert("User ID must be filled out");
  return false;
  }
var x=document.forms["myForm"]["pass"].value;
if (x==null || x=="")
  {
  alert("Password must be filled out");
  return false;
  }
var x=document.forms["myForm"]["repass"].value;
if (x==null || x=="")
  {
  alert("Please Re Enter Password");
  return false;
  }
var x=document.forms["myForm"]["sq"].value;
if (x==null || x=="")
  {
  alert("Please Select Security Question");
  return false;
  }
var x=document.forms["myForm"]["ans"].value;
if (x==null || x=="")
  {
  alert("Security Answer must be filled out");
  return false;
  }
var x=document.forms["myForm"]["fname"].value;
if (x==null || x=="")
  {
  alert("First Name must be filled out");
  return false;
  }
var x=document.forms["myForm"]["lname"].value;
if (x==null || x=="")
  {
  alert("Last Name must be filled out");
  return false;
  }
var x=document.forms["myForm"]["email"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  } 
var reg= /^\d{10}$/;
var mob=document.forms["myForm"]["mob"].value;
if (reg.test(mob)==false)
  {
  alert("Invalid Mobile Number");
  return false;
  }  
 

var x=document.forms["myForm"]["day"].value;
if (x==null || x=="")
  {
  alert("select day of Date Of birth");
  return false;
  }
var x=document.forms["myForm"]["month"].value;
if (x==null || x=="")
  {
  alert("select month of Date Of birth");
  return false;
  }
var x=document.forms["myForm"]["year"].value;
if (x==null || x=="")
  {
  alert("select year of Date Of birth");
  return false;
  }
var x=document.forms["myForm"]["gen"].value;
if (x==null || x=="")
  {
  alert("Please Select your Gender");
  return false;
  }  
var x=document.forms["myForm"]["mary"].value;
if (x==null || x=="")
  {
  alert("Please Select your Marital Status");
  return false;
  } 

var x=document.forms["myForm"]["occ"].value;
if (x==null || x=="")
  {
  alert("Please Select your Occuption");
  return false;
  }   
var x=document.forms["myForm"]["nat"].value;
if (x==null || x=="")
  {
  alert("Please Select your Nationality");
  return false;
  } 
var x=document.forms["myForm"]["add"].value;
if (x==null || x=="")
  {
  alert("Address must be filled out");
  return false;
  }
var x=document.forms["myForm"]["contry"].value;
if (x==null || x=="")
  {
  alert("Please Select your Country");
  return false;
  }
  var x=document.forms["myForm"]["pin"].value;
if (x==null || x=="")
  {
  alert("Pin Code must be filled out");
  return false;
  }
var x=document.forms["myForm"]["stat"].value;
if (x==null || x=="")
  {
  alert("State must be filled out");
  return false;
  }

var x=document.forms["myForm"]["city"].value;
if (x==null || x=="")
  {
  alert("City must be filled out");
  return false;
  }


var x=document.forms["myForm"]["cname"].value;
if (x==null || x=="")
  {
  alert("Please Enter Captcha Code");
  return false;
  }
}
</script>

</head>

<body class="cbp-spmenu-push">

	<%@ include file="../html1/nav.html" %>

<!-- contact -->
	<div class="contact">
		<div class="container">
			<h3>New Registration</h3><br><br>
			<table border="0" cellpadding="0" cellspacing="0" width="100%">

        <tbody><tr>
          <td align="left" valign="top" width="100%" height="355">
 <h4><strong>Register :</strong><br><br><br>
<form name="myForm" action="email.jsp" onsubmit="return validateForm();" method="post">

		   <table border="0" cellpadding="0" cellspacing="0" width="100%" align="center">
         <tr> <td align="left" valign="top"  > User Id  :</td><td ><input type="text" name="uid" size="20" minlength=6 > </td></tr>
               <tr> <td>&nbsp;</td> </tr>

	<tr> <td align="left" valign="top"  > Password :</td><td ><input type="password" name="pass" size="20" minlength=6> </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  >ReEnter Password :</td><td ><input type="password" name="repass" size="20"> </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  >Security Question :</td><td ><select  name="sq"  size="1">	<option selected="selected" value="-1">----Select your Security Question----</option>
	<option value="What is your pet name?">What is your pet name?</option>
	<option value="What was the name of your first school?">What was the name of your first school?</option>
	<option value="Who was your Childhood hero?">Who was your Childhood hero?</option>
	<option value="What is your favorite past-time?">What is your favorite past-time?</option>
	<option value="What is your all time favorite sports team?">What is your all time favorite sports team?</option>
	<option value="What is your fathers middle name?">What is your fathers middle name?</option>
	<option value="What make was your first car or bike?">What make was your first car or bike?</option>
	<option value="Where did you first meet your spouse?">Where did you first meet your spouse?</option>
</select> </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  >Security Answer :</td><td ><input type="text" name="ans" size="20"> </td></tr>
        <tr> <td>&nbsp;</td> </tr>     <tr> <td align="left" valign="top"  > First Name  :</td><td ><input type="text" name="fname" size="20" > </td></tr>
        <tr> <td>&nbsp;</td> </tr>     <tr> <td align="left" valign="top"  >Middle Name  :</td><td ><input type="text" name="mname" size="20" > </td></tr>
         <tr> <td>&nbsp;</td> </tr>
<tr> <td align="left" valign="top"  > Last Name  :</td><td ><input type="text" name="lname" size="20" > </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Email  :</td><td ><input type="text" size="20" name="email"> </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Mobile  :</td><td ><input type="text" size="20" name="mob" minlength="10" maxlength="10"> </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Home Station  :</td><td ><input type="text" name="home" size="20" > </td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Date Of Birth  :</td>
		 <td ><select name="day" class="form-con">
	<option value="Select">Day</option>
	<%
	int d=1;
	for(d=1;d<=31;d++)
	{
	%>
	<option value=<%=d%>><%=d%></option>
	<%
	}
	
	%>
	</select>
	
	<select name="month" class="form-con">
	<option value="Select">Month</option>
	<%
	int m=1;
	for(m=1;m<=12;m++)
	{
	%>
	<option value=<%=m%>><%=m%></option>
	<%
	}
	
	%>
	</select><select name="year" class="form-con">
	<option value="Select">Year</option>
	<%
	int y=1990;
	for(y=1930;y<=2016;y++)
	{
	%>
	<option value=<%=y%>><%=y%></option>
	<%
	}
	
	%></select>
	</td></tr>
         <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Gender  :</td><td ><select name="gen" class="form-cont">
	<option value="Select">Select Gender</option>
	<option value="male">Male</option>
	<option value="female">Female</option></select> </td></tr>
     <tr> <td>&nbsp;</td> </tr><tr> <td align="left" valign="top"  > Marital Status  :</td><td ><select name="mary" class="form-cont">
	<option value="Select">Select Marital Status</option>
	<option value="married">Married</option>
	<option value="unmarried">Unmarried</option></select> </td></tr>
     <tr> <td>&nbsp;</td> </tr>
								 <tr> <td align="left" valign="top"  > Occupation :</td><td ><select  name="occ" csize="1">	<option selected="selected" value="-1">----Select Occupation---</option>
	<option value="Government">Government</option>
	<option value="Public">Public</option>
	<option value="Private">Private</option>
	<option value="Professional">Professional</option>
	<option value="SelfEmployed">SelfEmployed</option>
	<option value="Student">Student</option>
	<option value="Others">Others</option>
</select></td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Aadhaar Card No :</td><td ><input type="text" name="adar" size="15"> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > PAN Card :</td><td ><input type="text" name="pan" size="15"> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Nationality :</td><td >
<%@ include file="nation.html" %>
	 </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Residential Address :</td><td ><textarea type="text" name="add" rows="6" cols="40"></textarea> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Country :</td><td ><%@ include file="country.html" %> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Pin Code :</td><td ><input type="text" name="pin" size="20"> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > State :</td><td ><input type="text" name="stat" size="20"> </td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > City/Town :</td><td ><input type="text" name="city" size="20"> </td></tr>
<input type="hidden" name="utype" value="user">
<tr><td >&nbsp;</td> </tr>       <tr> <td></td><td><img src="../captcha/captcha.jsp"/></td></tr>
<tr> <td>&nbsp;</td> </tr>		 <tr> <td align="left" valign="top"  > Captcha :</td><td ><input type="text" name="cname" size="10"> </td></tr>

          <tr> <td>&nbsp;</td> </tr>

<tr>

            <td colspan="2">&nbsp;</td>

          </tr>

          <tr>

            <td colspan="2" align="center"><input name="submit"  value="Register" type="submit">&nbsp;

                  <input name="Reset" value="Clear" type="reset"></td>
				  </form>
 <tr> <td>&nbsp;</td> </tr>
 <tr> <td><font color="#800000">Already Register Login Here</font></td> </tr>
<tr> <td>&nbsp;</td> </tr>
 <tr> <td><a href="reservation.jsp"><image src="../images/login.gif"></td> </tr>
 
          </a>  </tr></table>
				  </td></tr></table><p align=right><a href="#" onclick="sendClickCode(&#39;jumpto&#39;, &#39;back to top:footer&#39;);">Back to top</a>

		</div>	
	</div>
<!-- //contact -->

<%@ include file="../html1/footer.html" %>

</body>
</html>