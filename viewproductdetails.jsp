<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert(' Approved.....')</script>");
}%>
<% if(request.getParameter("msg2")!=null){
	  out.println("<script>alert(' Rejected.....')</script>");
}%>
<center><table style="border-collapse: separate; border-spacing: 50px;">
<tr><th>Product Code Number</th><th>Product Name</th><th>Product Description</th><th>Price</th><th>Product Image</th><th>Product Status</th></tr>

<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from products");
	
%>


<%
while(rs.next())
	{%>


	<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(7)%></td>

<td><img src="images/<%=rs.getString(6)%>" width="100px" height="100px"></td>
<% if(rs.getString(8).equals("approved")){%>
<td><font color="green">Approved</font></td>
<%}
else if(rs.getString(8).equals("rejected")){%>
<td><font color="red">Rejected</font></td>
<%}else{%>
<td><a href="paproove.jsp?pname=<%=rs.getString(1)%>">Approve</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="preject.jsp?pname=<%=rs.getString(1)%>">Reject</a></td>
</tr><%}}%>
</table></center>
<br><br>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>

