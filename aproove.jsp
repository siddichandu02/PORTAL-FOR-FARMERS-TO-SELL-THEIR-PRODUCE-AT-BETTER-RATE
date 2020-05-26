<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>


<%
String sname=request.getParameter("sname");
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

int i=st2.executeUpdate("update seller set status='approved' where sname='"+sname+"' and status='pending' ");
	if(i>0){
	


response.sendRedirect("sellerdetails.jsp?msg=aprooved");

}}
catch(Exception e)
{
e.printStackTrace();
	}
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>

