<%@include file="header.jsp"%>

<%
if(request.getParameter("msgreg")!=null)
{
										out.println("<script>alert('Email already exists..')</script>");

	
}
%>
<br><br><br>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">

<center><h1><font color="#ff33cc" size="6">Seller Registration</font></h1><center><br>
	<form name="myform" method="post" action="sellerinsert.jsp"> 
	<table align="center">
	<tr>
	   <td><font size="4" color="black">First Name<font color="red">*</font>:</td>
		<td><input type="text" name="fname" required></td>
		</tr>
		<tr>
	   <td><font size="4" color="black">Last Name<font color="red">*</font>:</td>
		<td><input type="text" name="lname" required></td>
		</tr>
	   <tr>
	   <td><font size="4" color="black">user Name<font color="red">*</font>:</td>
		<td><input type="text" name="uname" required></td>
		</tr>
		
		<tr>
		<td><font size="4" color="black">Password<font color="red">*</font>:</td>
		<td><input type="password" name="pass" required></td>
		</tr>
	   <tr>
		<td><font size="4" color="black">Email<font color="red">*</font>:</font></td>
		<td><input type="email" name="email"required></td>
		</tr>
		 <tr>
		<td><font size="4" color="black">Phone No<font color="red">*</font>:</font></td>
		<td><input type="text" name="phoneno"required></td>
		</tr>
		<tr>
		<td><font size="4" color="black">Name of the Organization<font color="red">*</font>:</font></td>
		<td><input type="text" name="org"required></td>
		</tr>
		<tr>
		<td><font size="4" color="black">Address<font color="red">*</font>:</font></td>
		<td><input type="text" name="address"required></td>
		</tr>
		<tr>
		<td><font size="4" color="black">Business Permit Number<font color="red">*</font>:</font></td>
		<td><input type="text" name="bnum"required></td>
		</tr>
		<tr>
		<td><font size="4" color="black">Logo of the Organization</font></td>
		<td><input type="file" name="logo"></td>
		</tr>
		<tr>
		</tr>
		<tr></tr>
		<tr></tr>
	   	<tr></tr>
		<tr>
		<td>
		</td> 
	   <td><input type="submit" value="Sign Up" style="font-size:18px">&nbsp;&nbsp;&nbsp;
	   	<input type="reset" value="Cancel" style="font-size:18px"></td>
		</tr>
	   </table>
	   </form>

	   <br><br><br><br><br>
<%@include file="footer.jsp"%>
