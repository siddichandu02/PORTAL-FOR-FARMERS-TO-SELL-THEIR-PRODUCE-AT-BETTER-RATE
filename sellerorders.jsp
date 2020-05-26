<%@include file="sheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>
<%
if((request.getParameter("updatestatus")+"").equals("accepted"))
{
	out.println("<script>alert('Order accepted ..!')</script>");
}
else if((request.getParameter("updatestatus")+"").equals("rejected"))
{
	out.println("<script>alert('Order rejected ..!')</script>");
}
 if((request.getParameter("m3")+"").equals("rejected"))
{
	out.println("<script>alert('Order rejected ..!')</script>");
}
 if((request.getParameter("m3")+"").equals("approved"))
{
	out.println("<script>alert('Order confirmed ..!')</script>");
}

 if((request.getParameter("m3")+"").equals("unable to reject"))
{
	out.println("<script>alert('unable to reject order ..!')</script>");
}
 if((request.getParameter("m3")+"").equals("unable to approve"))
{
	out.println("<script>alert('unable to confirm order ..!')</script>");
}
%>
<center><h1><strong><font color="#0000ff" size="6">Your Orders</font></strong></h1></center><br>
<!-- <h2><strong><font color="#6666ff" size="4">Cricket Bats View All </font></strong></h2> -->
<form action="addcart.jsp" method="post">
<table border="2" align="center">
<tr>
<!-- <td><font color="#ff0066" size="5">Product Type</font></td> -->
<td align="center"><font color="#ff0033" size="5"><strong>Order Id</strong></font></td>

<td align="center"><font color="#ff0033" size="5"><strong>Buyers Email</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Ordered products</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Status</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Update status</strong></font></td>


</tr>
<%


		Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
try{
	String uemail=session.getAttribute("seller")+"";
	//out.println(uemail);
        ResultSet rs = st.executeQuery("select * from orderdetails where semail='"+uemail+"' and status='wait'  ");
        while(rs.next())
        {
			
			
%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(1)%></font></strong></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong>

<br>

<ul class="nav-item"><a href= "userinfo.jsp?uemail=<%=rs.getString(2)%>" class="nav-link">Buyer Info</a></ul>
</td>
<td> <ul class="nav-item"><a href= "sellerordersproducts.jsp?orderid=<%=rs.getString(1)%>" class="nav-link">Info</a></ul></td>	
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(3)%></font></strong></td>
<td align="center"><strong><a href= "approveorderseller.jsp?orderid=<%=rs.getString(1)%>" class="nav-link">Approve</a></strong>&nbsp;&nbsp;&nbsp;
<strong><a href= "rejectorderseller.jsp?orderid=<%=rs.getString(1)%>" class="nav-link">Reject</a></strong></td>
</tr>
<%}

  rs = st.executeQuery("select * from orderdetails where semail='"+uemail+"' and status='confirmed'");
        while(rs.next())
        {%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(1)%></font></strong></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong>

<br>

<ul class="nav-item"><a href= "userinfo.jsp?uemail=<%=rs.getString(2)%>" class="nav-link">Buyer Info</a></ul></td>

<td> <ul class="nav-item"><a href= "sellerordersproducts.jsp?orderid=<%=rs.getString(1)%>" class="nav-link">Info</a></ul></td>	
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(3)%></font></strong></td>

</tr>
		<%}
		 rs = st.executeQuery("select * from orderdetails where semail='"+uemail+"' and status='rejected' ");
        while(rs.next())
        {%>
<tr>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(1)%></font></strong></td>
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(2)%></font></strong>

<br>

<ul class="nav-item"><a href= "userinfo.jsp?uemail=<%=rs.getString(2)%>" class="nav-link">Buyer Info</a></ul>
</td>
<td> <ul class="nav-item"><a href= "sellerordersproducts.jsp?orderid=<%=rs.getString(1)%>" class="nav-link">Info</a></ul></td>	
<td align="center"><strong><font size="4" color="#000000"><%=rs.getString(3)%></font></strong></td>

</tr>
		<%}
		%>
</table>
<br>

<br>
<table align="center">
<tr>
<td>
<input type="button" value="Continue Shopping" name="pname" onclick="window.location.href='userhome.jsp'">

</tr>
</table>
</form>


<%

}catch(Exception e)
{
	e.printStackTrace();
}	
%>
<br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>