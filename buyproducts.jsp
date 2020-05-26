<%@ include file="uheader.jsp"%>

<%@ page import="java.sql.*,IBE.*"%>

<head>


<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=250,width=500');
	if (window.focus) {newwindow.focus()}
	return false;
}</script>
</head>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<% String msg=request.getParameter("msg");

if(msg!=null){

out.println("<script>alert('Please select Atleast one Product')</script>");
}%>



<center><form method="post" action="addcart.jsp"><table style="border-collapse: separate; border-spacing: 50px;">
<tr><th>Product Code Number</th><th>Product Name</th><th>Product Description</th><th>Price</th><th>Product Image</th><th>Rating</th></tr>
<style>

</style>
<%
try{
	
Connection con = databasecon.getconnection();

%>
<%
String Email=request.getParameter("Email");
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs= st1.executeQuery("select * from products where status='approved' and Email='"+Email+"'");
session.setAttribute("Semail",Email);
	
%>


<%
while(rs.next())
	{%>


	<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(7)%></td>
<td><img src="images/<%=rs.getString(6)%>" width="100px" height="100px"></td>
<td>
<%

st2=con.createStatement();
ResultSet rs2= st2.executeQuery("select avg(raiting)  from raiting where pid='"+rs.getString(1)+"' ");
rs2.next();
if(rs2.getString(1)==null){
out.println("No Ratings");

}else{
out.println(rs2.getString(1));
%><br>


<%}

	%>


<td><input type="checkbox" name="pid" value="<%=rs.getString(1)%>" ></td>
<td><a href='' onclick="return popitup('raiting.jsp?pnumber=<%=rs.getString(1)%>')">Rate Product</a></td><%}%></tr>
<tr><td><button type="submit" class="btn btn-success btn-lg" id="add">Add to Cart </button></td></tr>
</table></form></center>
<br><br>
<%
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>

