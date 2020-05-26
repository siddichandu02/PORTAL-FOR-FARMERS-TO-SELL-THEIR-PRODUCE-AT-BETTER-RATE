<%@ include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%
String rating=request.getParameter("rating");
String tt=request.getParameter("tt");
String Email=request.getParameter("Email");


try{

Connection con = databasecon.getconnection();
Statement st1=con.createStatement();
Statement st2=con.createStatement();

%>


<%! String pid; 
int total=0; 
ArrayList al=new ArrayList();
ArrayList al1=new ArrayList();
%>
<% 

   pid = request.getParameter("pnumber");

	  


int q= st1.executeUpdate("insert into raiting values('"+pid+"','"+email+"','"+rating+"','"+tt+"')");

	  
//response.sendRedirect("raiting.jsp?m4=Succsessfully rated");
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
	e1.printStackTrace();
out.println(e1.getMessage());
}


%>
<Script>window.open('','_parent','');
window.close();
</script>


<%@include file="footer.jsp"%>
