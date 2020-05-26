
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>


<%
String pnumber=request.getParameter("pnumber");
try
{
ResultSet rs=null;
Connection con=databasecon.getconnection();
	    String Email=session.getAttribute("seller")+"";
		Statement st=con.createStatement();
		String qry="delete from products where pnumber='"+pnumber+"' and Email='"+Email+"'";
		int i=st.executeUpdate(qry);
		if(i!=0)
		response.sendRedirect("updateproducts.jsp?delete=success");
	else
				response.sendRedirect("updateproducts.jsp?delete=unsuccess");
}
catch(Exception e1)
{
response.sendRedirect("updateproducts.jsp?delete=unsuccess");
}
%>


