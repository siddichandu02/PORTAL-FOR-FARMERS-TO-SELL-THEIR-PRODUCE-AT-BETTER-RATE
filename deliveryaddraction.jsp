<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
try
{
String uemail=session.getAttribute("uemail")+"";
	String fname=request.getParameter("fname")+"";
	String address1=request.getParameter("address1")+"";
	String address2=request.getParameter("address2")+"";
	String city=request.getParameter("city")+"";
	String state=request.getParameter("state")+"";
	String zip=request.getParameter("zip")+"";
	String country=request.getParameter("country")+"";
	String mno=request.getParameter("mno")+"";
	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
		out.println(fname+"','"+address1+"','"+address2+"','"+city+"','"+state+"','"+zip+"','"+country+"','"+uemail+"')");
       int rs= st.executeUpdate("insert into useraddress (`fname`,`address1`,`address2`,`city`,`state`,`zip`,`country`,`mno`,`uemail`)values('"+fname+"','"+address1+"','"+address2+"','"+city+"','"+state+"','"+zip+"','"+country+"','"+mno+"','"+uemail+"')");
if(rs>0)
		{
			response.sendRedirect("payment.jsp");
		}
else		{
			response.sendRedirect("deliveryaddr.jsp");
		}
%>

<%

}catch(Exception e)
{
	e.printStackTrace();
}	
%>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>