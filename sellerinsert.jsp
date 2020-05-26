<%@ include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<html>
<head>
<title></title>

</head>

<body>
<%!String uid=null;
float amt=0.0f;

%>
<%
String date="NO";
String fname= request.getParameter("fname");
String lname= request.getParameter("lname");
String uname= request.getParameter("uname");
String password= request.getParameter("pass");
String email= request.getParameter("email");
String phoneno=request.getParameter("phoneno");
String org=request.getParameter("org");
String address=request.getParameter("address");
String bnum=request.getParameter("bnum");

String logo=request.getParameter("logo");



try
{
Connection con=databasecon.getconnection();
	Statement st=con.createStatement();
		  ResultSet rs = st.executeQuery("select * from user where email='"+email+"'");
		if(rs.next())
		{
			response.sendRedirect("sellrregistration.jsp?msgreg=already exists");
		}
		
PreparedStatement ps=con.prepareStatement("insert into seller values(?,?,?,?,?,?,?,?,?,?,'pending')");
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,uname);
ps.setString(4,password);
ps.setString(5,email);
ps.setString(6,phoneno);
ps.setString(7,org);
ps.setString(8,address);
ps.setString(9,bnum);
ps.setString(10,logo);





ps.executeUpdate();

response.sendRedirect("seller.jsp?message=success");
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>


<%@ include file="footer.jsp"%>