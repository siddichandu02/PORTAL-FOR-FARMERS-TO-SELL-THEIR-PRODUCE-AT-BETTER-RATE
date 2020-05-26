<%@include file="uheader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
if(request.getParameter("m")!=null)
{
	out.println("<script>alert('No Sufficiant Balance In Wallet...!')</script>");
}

%>
<%
//float total= Float.parseFloat(request.getParameter("price"));

try
{
ArrayList al=new ArrayList();
Connection con=databasecon.getconnection();
		
		Statement st2=con.createStatement();
		Statement st=con.createStatement();
 ResultSet rs = st.executeQuery("select pname from orderdetails where email='"+email+"' and status='wait'");
        while(rs.next())
        {
String pname=rs.getString(1);

int i=st2.executeUpdate("insert into userhistory(email,pname)  values('"+email+"','"+pname+"')");

}}
catch(Exception e1)
{
	e1.printStackTrace();
out.println(e1.getMessage());
}


%>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<br><br>
<h1><center>Payment</center></h1><br><br>
<form method="post" action="deliveryaddr.jsp">
	<center>
	<font size="5" color="#993300"><Strong>Pay Payment :</Strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<!--input type="radio" name="type" value="wallet"> Wallet&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
	<input type="radio" name="type" value="Online" required> Online
	<input type="radio" name="type" value="Cash" required> Cash
	<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="Submit">
	</center>
</form>
<br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>