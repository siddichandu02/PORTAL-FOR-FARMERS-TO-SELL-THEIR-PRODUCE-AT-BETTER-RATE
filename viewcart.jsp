<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>
<%
if(request.getParameter("delete")!=null)
{
	out.println("<script>alert('Product Deleted From Cart..!')</script>");
}

%>
<center><h1><strong><font color="#0000ff" size="6">Your Cart Items</font></strong></h1></center><br>
<!-- <h2><strong><font color="#6666ff" size="4">Cricket Bats View All </font></strong></h2> -->
<form action="addcart.jsp" method="post">
<table border="2" align="center">
<tr>
<!-- <td><font color="#ff0066" size="5">Product Type</font></td> -->
<td align="center"><font color="#ff0033" size="5"><strong>Product Name</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Image</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Price</strong></font></td>
</tr>
<%
try{
	String uemail=session.getAttribute("uemail")+"";
	float tAmount=0;
	int tItems=0;
		Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
		Statement st1 = con.createStatement();
		Statement st2= con.createStatement();
		ResultSet rs1 = st1.executeQuery("SELECT SUM(price) FROM cartitems where email='"+uemail+"'");
		if(rs1.next())
	{
			tAmount=rs1.getFloat(1);
			System.out.println("total Amount:"+tAmount);
	}

	

        ResultSet rs = st.executeQuery("select * from cartitems where email='"+uemail+"' ");
        while(rs.next())
        {
			
			
%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong></td>
<td align="center"><img src="images/<%=rs.getString(4)%>" alt="home" height="70" width="70"></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(3)%></font></strong></td>

<td align="center"><a href="deleteproduct.jsp?pname=<%=rs.getString(2)%>"><font size="4" color="#ff0000"><strong>Remove</strong></font></strong></td>
</tr>
<%}%>
</table>
<br>
<table border="0" align="center"> 
<tr>
<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
<td><strong><font size="4" color="#000000">Total($):</font><font size="4" color="#0000cc"><%=tAmount%></font></strong></td>
</tr>
</table>
<br>
<table align="center">
<tr>
<td>
<input type="button" value="Continue Shopping" name="pname" onclick="window.location.href='buyproductsfarmer.jsp'">
</td>
<td>
<input type="button" value="Procees To Checkout" onclick="window.location.href='deliveryaddr.jsp'">
</td>
<!-- <td><a href="cricket.jsp"><font size="6" color="#ff9933">Continue Shopping</font></strong></td>
<td></td><td></td><td></td><td></td>
<td><a href="user.jsp"><font size="6" color="#9933cc">Procees To Checkout</font></strong></td> -->
</tr>
</table>
</form>


<%

}catch(Exception e)
{
	e.printStackTrace();
}	
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>