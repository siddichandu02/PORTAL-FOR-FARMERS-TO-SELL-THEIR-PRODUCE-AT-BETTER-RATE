<%@include file="sheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>

<center><h1><strong><font color="#0000ff" size="6">Buyer Info</font></strong></h1></center><br>
<!-- <h2><strong><font color="#6666ff" size="4">Cricket Bats View All </font></strong></h2> -->
<form action="addcart.jsp" method="post">
<table border="2" align="center">
<tr>
<!-- <td><font color="#ff0066" size="5">Product Type</font></td> -->
<td align="center"><font color="#ff0033" size="5"><strong>Buyer Name</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Phone</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Address</strong></font></td>
</tr>
<%
try{
	String uemail=session.getAttribute("uemail")+"";
	float tAmount=0;
	int tItems=0;
		Connection con=databasecon.getconnection();
		Statement st1 = con.createStatement();
		        ResultSet rs2 = st1.executeQuery("select * from user where email='"+uemail+"' ");
				rs2.next();

		Statement st = con.createStatement();

	

        ResultSet rs = st.executeQuery("select * from useraddress where uemail='"+uemail+"' ");
        while(rs.next())
        {
			
			
%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs2.getString(3)%></font></strong></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs2.getString(6)%></font></strong></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong><br>
<strong><font size="4" color="#000000"><%=rs.getString(4)%></font></strong><br>
<strong><font size="4" color="#000000"><%=rs.getString(5)%></font></strong><br>
<strong><font size="4" color="#000000"><%=rs.getString(6)%></font></strong>
</td>

</tr>
<%
break;}%>
</table>
<br>

<br>
<table align="center">
<tr>
<td>
<input type="button" value="back to orders" name="pname" onclick="window.location.href='sellerorders.jsp'">
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
	out.println(e);
	
}	
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>