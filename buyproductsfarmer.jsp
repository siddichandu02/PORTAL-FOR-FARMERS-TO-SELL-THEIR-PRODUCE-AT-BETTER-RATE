<%@ include file="uheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>

<head>


</head>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br>

<table border="2" align="center">
<tr>
<!-- <td><font color="#ff0066" size="5">Product Type</font></td> -->
<td align="center"><font color="#ff0033" size="5"><strong>List of Farmers</strong></font></td>
<td align="center"><font color="#ff0033" size="5"><strong>Farmer Poducts</strong></font></td>
</tr>
<%
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st1.executeQuery("select * from seller where status='approved'");
	
%>


<%
while(rs.next())
	{%>


	<tr>
	<td align="center"><font color="#000000" size="5"><strong><%=rs.getString(3)%></strong></font></td>
	<td> <ul class="nav-item"><a href= "buyproducts.jsp?Email=<%=rs.getString(3)%>"  class="nav-link">Shop</a></ul></td>
	
	</tr>

<%
}%>

</table></form></center>
<br><br>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>

