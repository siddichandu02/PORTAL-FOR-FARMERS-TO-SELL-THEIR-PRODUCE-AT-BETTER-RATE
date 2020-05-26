<%@include file="sheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>

<center><h1><strong><font color="#0000ff" size="6">Buyer Order Items</font></strong></h1></center><br>
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
	float tAmount=0;
	String orderid=request.getParameter("orderid")+"";
		Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
	
out.println(orderid);
	//out.println(status);
	ResultSet rs1 = st.executeQuery("SELECT SUM(price) FROM orderitems where orderid="+orderid);
		if(rs1.next())
	{
			tAmount=rs1.getFloat(1);
			System.out.println("total Amount:"+tAmount);
	}

        ResultSet rs = st.executeQuery("select * from orderitems where orderid="+orderid);
        while(rs.next())
        {
			
			
%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong></td>

<td align="center"><img src="images/<%=rs.getString(4)%>" alt="home" height="70" width="70"></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(3)%></font></strong></td>

</tr>
<%}%>

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
<input type="button" value="back to orders" name="pname" onclick="window.location.href='sellerorders.jsp'">
</td>
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