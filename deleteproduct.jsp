<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
try{
		
		String pname=request.getParameter("pname");
		Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        int rs = st.executeUpdate("delete from cartitems where pname='"+pname+"' ");
        if(rs!=0)
        {
			response.sendRedirect("viewcart.jsp?delete=deleted");
		}

}catch(Exception e)
{
	e.printStackTrace();
}	
%>
<br><br><br><br>
<%@include file="footer.jsp"%>