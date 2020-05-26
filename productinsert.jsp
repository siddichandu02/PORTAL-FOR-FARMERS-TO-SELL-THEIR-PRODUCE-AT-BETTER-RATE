
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
String pnumber= request.getParameter("pnumber");
String barimage= request.getParameter("barimage");
String prname= request.getParameter("prname");
String prdesc= request.getParameter("prdesc");
String orgimage= request.getParameter("orgimage");

String image= request.getParameter("image");
//String stock= request.getParameter("stock");
String price= request.getParameter("price");
String email=session.getAttribute("seller")+"";
try
{
Connection con=databasecon.getconnection();
	
		Statement st=con.createStatement();

PreparedStatement ps=con.prepareStatement("insert into products values(?,?,?,?,?,?,?,'pending',5,?)");

ps.setString(1,pnumber);

ps.setString(2,barimage);
ps.setString(3,prname);
ps.setString(4,prdesc);
//ps.setString(5,stock);
ps.setString(5,orgimage);
ps.setString(6,image);
ps.setString(7,price);
ps.setString(8,email);
ps.executeUpdate();
out.println("ds");

response.sendRedirect("addproducts.jsp?add=success");

}
catch(Exception e1)
{
out.println(e1);
}


%>
