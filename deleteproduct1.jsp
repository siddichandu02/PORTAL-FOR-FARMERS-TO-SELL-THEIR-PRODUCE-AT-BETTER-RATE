<%@include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
try{
		
		String pid=request.getParameter("prid");
		Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        int rs = st.executeUpdate("delete from userhistory where productid='"+pid+"' ");
        if(rs!=0)
        {
			response.sendRedirect("browsehistory.jsp?m1=deleted");
		}

}catch(Exception e)
{
	e.printStackTrace();
}	
%>
<br><br><br><br>
<%@include file="footer.jsp"%>