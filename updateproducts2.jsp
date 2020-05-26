 <%@include file="mheader.jsp"%>
<br><br><br>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%
String pnumber=request.getParameter("pnumber");
try
{
ResultSet rs=null;
Connection con=databasecon.getconnection();
	    String Email=session.getAttribute("seller")+"";
		Statement st=con.createStatement();
		String qry="select * from products where pnumber='"+pnumber+"' and Email='"+Email+"'";
		rs=st.executeQuery(qry);
		if(rs.next()){
		%>

<center><h1><font size="5" color="#6666ff">MANAGE PRODUCTS</font></h1></center>
<br>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<form action="updateproducts3.jsp" method="post">
                  
                  <table align="center">
				   <tr>
				  <td>
                  <strong><font size="4" color="black">Product Code Number:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="pnumber" style="width: 230px" value="<%=rs.getString(1)%>" readonly required>
                   </td>
				   </tr>
				   <tr>
				  <tr>
				  <td>
                  <strong><font size="4" color="black">Name:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="prname" style="width: 230px" value="<%=rs.getString(3)%>"  required>
                   </td>
				   </tr>
				   <tr>
				   <td>
                  <strong><font size="4" color="black">Description:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="prdesc" style="width:230px" value="<%=rs.getString(4)%>"required>
				  </td>
				  </tr>
					<tr>
					<td><strong><font size="4" color="black">Poduct Image:</font></strong></td>
					<td><input type="file" name="image" required />
					</td>
					</tr>

					 
				   <tr>
				   <td>
                  <strong><font size="4" color="black">Price:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="price"  value="<%=rs.getString(7)%>"style="width: 230px"required>
				  </td>
				  </tr>
				  
				  <tr></tr>
				  <tr></tr>
				  <tr>
				  <td>
				  </td>
					<td>
                          <input type="submit" value="Update">
						  
						 </td>
								</tr>
								 </table>
								</form>
<%
}}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>	
<br><br><br><br><br>
<%@include file="footer.jsp"%>