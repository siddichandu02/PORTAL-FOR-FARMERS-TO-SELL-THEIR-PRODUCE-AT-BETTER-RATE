<%@include file="sheader.jsp"%>
<br><br><br>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%

String ctid=null;
try
{
ResultSet rs=null;
Connection con=databasecon.getconnection();
	
		Statement st=con.createStatement();
		//String qry="select * from category group by ctname";
		//rs=st.executeQuery(qry);
		%>


<script>
function myFunction1() {

    var y = document.getElementById("mySelect1").value;


window.location="manageproducts.jsp?y="+y ;
}
</script>
<%
if(request.getParameter("add")!=null)
{
	out.println("<script>alert('Product Added..!')</script>");
}

%>

<center><h1><font size="5" color="#6666ff">Add PRODUCTS</font></h1></center>
<br>
<link href="font_style.css" rel="stylesheet" type="text/css" media="all">
<form action="productinsert.jsp" method="post">
                  
                  <table align="center">
				   
				  <td>
                  <strong><font size="4" color="black">Code Number:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="pnumber" style="width: 230px" required>
                   </td>
				   </tr>
				   <tr>
					<!--<td><strong><font size="4" color="black">Bar-Code Image:</font></strong></td>
					<td><input type="file" name="barimage" required />
					</td>
					</tr>-->
				  
				  <tr>
				  <td>
                  <strong><font size="4" color="black">Product Name:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="prname" style="width: 230px"required>

				  </select>
                   </td>
				   </tr>
				   <tr>
				   <td>
                  <strong><font size="4" color="black">Description:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="prdesc" style="width: 230px"required>
				  </td>
				  </tr>
				 <tr>
					<!--<td><strong><font size="4" color="black">Organisation Logo:</font></strong></td>
					<td><input type="file" name="orgimage" required />
					</td>
					</tr>
					<tr>-->
					<td><strong><font size="4" color="black">Product Image:</font></strong></td>
					<td><input type="file" name="image" required />
					</td>
					<!--</tr>
					 <tr>
					<td><strong><font size="4" color="black">Large ImagePath:</font></strong></td>
					<td><input type="file" name="largeipath" required />
					</td>
					</tr> -->
					 
				   <tr>
				   <td>
                  <strong><font size="4" color="black">Price:</font></strong>
				  </td>
				  <td>
                  <input type="text" name="price" style="width: 230px"required>
				  </td>
				  </tr>
				  <!-- <tr>
				  <td>
                  <strong><font size="4" color="black">Status:</font></strong>
				  </td>
				  <td>
                  <select name="status" required>
					<option value="Select Status" selected>Select Status</option>
				  <option value="IsActive">IsActive</option>
				  <option value="InActive">InActive</option>
				  </td>
				  </tr> -->
				  <tr></tr>
				  <tr></tr>
				  <tr>
				  <td>
				  </td>
					<td>
                          <input type="submit" value="Insert">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <input type="reset" value="Cancel">
						 </td>
								</tr>
								 </table>
								</form>
<%
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>	
<br><br><br><br><br>
<%@include file="footer.jsp"%>