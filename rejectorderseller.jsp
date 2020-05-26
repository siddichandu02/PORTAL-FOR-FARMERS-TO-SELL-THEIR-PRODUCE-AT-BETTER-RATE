<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>

<%
try{
	String semail=session.getAttribute("seller")+"";
	String orderid=request.getParameter("orderid")+"";
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        int rs = st.executeUpdate("update orderdetails set status='rejected' where orderid="+orderid);
		if(rs>0)
		{
			response.sendRedirect("sellerorders.jsp?m3=rejected");
		}
else		{
			response.sendRedirect("sellerorders.jsp?m3=unable to reject");
		}
        
%>



<%

}catch(Exception e)
{
			response.sendRedirect("sellerorders.jsp?m3=unable to reject");
}	
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>