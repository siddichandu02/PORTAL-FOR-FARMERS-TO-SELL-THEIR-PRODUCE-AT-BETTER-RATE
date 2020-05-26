
<%@ page import="java.sql.*,IBE.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<style>
body {
    background-image: url("images/");
    background-color: #cccccc;
}
</style>


<center><form method="post" action="addcart.jsp"><table style="border-collapse: separate; border-spacing: 15px;">
<tr><th>Product Bar-Code Image</th><th>Product Name</th><th>Organisation Logo</th></tr>

<%
try{
 String pnumber=request.getParameter("pnumber");

Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st2.executeQuery("select * from products where pnumber='"+pnumber+"' ");
	
%>


<%
while(rs.next())
	{%>


	<tr>
<td><img src="images/<%=rs.getString(2)%>" width="50px" height="70px"></td>
<td><%=rs.getString(3)%></td>
<td><img src="images/<%=rs.getString(5)%>" width="50px" height="70px"></td><%}%></tr>
</table></form></center>
<br><br>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>


