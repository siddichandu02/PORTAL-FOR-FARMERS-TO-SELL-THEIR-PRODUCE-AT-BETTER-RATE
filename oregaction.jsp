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
String country= request.getParameter("country");
String zip= request.getParameter("zip");
Connection con=null;

try
{
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e-shop","root","root");
		Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from seller where email='"+email+"'");
        out.println("select * from seller where email='"+email+"'");
		if(rs.next())
		{
			response.sendRedirect("userregistration.jsp?msgreg=already exists");
		}
		else{
PreparedStatement ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
	
	ps.setString(1,fname);
	
	ps.setString(2,lname);
	
	ps.setString(3,uname);
	
	ps.setString(4,password);
	
	ps.setString(5,email);
	
	ps.setString(6,phoneno);
	
	ps.setString(7,country);
	
	ps.setString(8,zip);
        
	int i=ps.executeUpdate();
	if(i==1)
	{
	response.sendRedirect("buyer.jsp?m=success");
	out.print("USER REGISTERED SUCCESSFULLY");
	}
	else
	{
		out.print("USER REGISTERED SUCCESSFULLY");

	}
		}
}
catch(Exception e1)
{
out.println(e1);
out.println("fsdfsd");
}


%>
</body>
</html>


<%@ include file="footer.jsp"%>