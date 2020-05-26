<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert(' Aprooved.....')</script>");
}%>
<% if(request.getParameter("msg2")!=null){
	  out.println("<script>alert(' Rejected.....')</script>");
}%>
<center><table style="border-collapse: separate; border-spacing: 50px;">
<tr><th>Seller Name</th><th>Email </th><th>Mobile </th></tr>

<%
try{
Connection con = databasecon.getconnection();

%>
<%
 Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from seller");
	
%>


<%
while(rs.next())
	{%>


	<tr>
<td><%=rs.getString(3)%></td>
<td ><%=rs.getString(5)%></td>
<td ><%=rs.getString(6)%></td>
<% if(rs.getString(11).equals("approved")){%>
<td><font color="green">Approved</font></td>
<%}
else if(rs.getString(11).equals("rejected")){%>
<td><font color="red">Rejected</font></td>
<%}else{%>
<td><a href="aproove.jsp?sname=<%=rs.getString(3)%>">Approve</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="reject.jsp?sname=<%=rs.getString(3)%>">Reject</a></td>
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

