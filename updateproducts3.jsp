
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
String pnumber= request.getParameter("pnumber");
String prname= request.getParameter("prname");
String prdesc= request.getParameter("prdesc");
String image= request.getParameter("image");
String price= request.getParameter("price");

try
{
Connection con=databasecon.getconnection();
	
Statement st=con.createStatement();

PreparedStatement ps=con.prepareStatement("update  products  set pname=? ,description=?,image=?,price=? where  pnumber='"+pnumber+"' ");
ps.setString(1,prname);
ps.setString(2,prdesc);
ps.setString(3,image);
ps.setString(4,price);

ps.executeUpdate();

response.sendRedirect("updateproducts.jsp?update=success");

}
catch(Exception e1)
{
e1.printStackTrace();
}


%>

