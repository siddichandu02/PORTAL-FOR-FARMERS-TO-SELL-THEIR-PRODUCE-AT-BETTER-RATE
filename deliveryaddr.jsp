<%@include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>

<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
	<center><h1><font color="#ff8000" size="6">Delivery Address Details </font></h1></center>
	<form name="myform" method="post" action="deliveryaddraction.jsp"> 
	<table align="center">
	   <tr>
	   <td><font size="4" color="black">Full Name <font color="red">*</font>:</td>
		<td><input type="text" name="fname" required></td>
		</tr>
	   <tr>
	   <td><font size="4" color="black">Address Line1<font color="red">*</font>:</td>
	   <td><input type="text" name="address1" required></td>
	   </tr>
	   <tr>
	   <td><font size="4" color="black">Address Line2:</td>
	   <td><input type="text" name="address2"></td>
	   </tr>
	   <tr>
		<td><font color="black" size="4">City<font color="red"required>*</font>:</td>
		<td style="color:#000000;font-weight:bold">
		<input type="text" name="city" rows="3" cols="40"required>
		</td>
		</tr>
		<tr>
		<td><font color="black" size="4">State<font color="red">*</font>:</td>
		<td>	<input type="text" name="state" rows="3" cols="40"required></td>
		</tr>
		<tr>
		<td><font color="black" size="4">Zip<font color="red">*</font>:</td>
		<td style="color:#000000;font-weight:bold">
		<input type="text" name="zip" rows="3" cols="40"required>
		</td>
		</tr>
		<tr>
		<td><font color="black" size="4">Country<font color="red">*</font>:</td>
		<td><input type="text" name="country" rows="3" cols="40"required></td>
		</tr>
		<tr>
		<td><font size="4" color="black">Mobile No<font color="red">*</font>:</font></td>
		<td><input type="text" name="mno"required></td>
		</tr>
			
		

  		<tr>
		<td></td>
	   <td><input type="submit" value="Save&Continue" style="font-size:18px">
	   	</td>
		</tr>
	   </table>
	</form>
<%@include file="footer.jsp"%>