<%@ include file="aheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>


<%
String pname=request.getParameter("pname");
try{
Connection con = databasecon.getconnection();

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

int i=st2.executeUpdate("update products set status='approved' where pnumber='"+pname+"' and status='pending' ");
	if(i>0){
	


response.sendRedirect("viewproductdetails.jsp?msg=approved");

}}
catch(Exception e)
{
e.printStackTrace();
	}
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>

