<%@include file="uheader.jsp"%>
<br><br>
<div align="center">
<h1 align="center"><font color="green">Payment Gateway</font></h1>

<form action="paymentaction.jsp" method="post" >
<table>
<tr>
<td>
<input type="radio" name="type" value="online">Credit Card
<br><br>
<input type="radio" name="type" value="online">Debit Card
<br><br>
<input type="radio" name="type" value="online">Net Banking
<br><br>
<input type="radio" name="type" value="online">Credit Card EMI
<br><br>
<input type="radio" name="type" value="cash">Cash On Delivery
</td>
	<td><font size="4" color="">Select Yout Card:</font></td>
	<td><select name="card">
			<option value="">---Select---</option>
			<option value="Mastro Card">Mastro Card</option>
			<option value="VISA Card">VISA Card</option>
			</select>
	</td>

	<td><font size="4" color="">Select Your Bank</font></td>
	<td>
	<select name="bank">
			<option value="">---Select---</option>
			<option value="SBI">SBI</option>
			<option value="ICICI">ICICI</option>
			<option value="AXIS">AXIS</option>
			<option value="BOI">BOI</option>
			</select>
	</td>
	<td>




	
	</td>

	
</tr>
</table><br><br>

&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="Order" onclick="">
</form>
</div><br><br><br>
<%@include file="footer.jsp"%>