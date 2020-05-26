<%@include file="sheader.jsp"%>

<%
								if(request.getParameter("m")!=null)
								{
									out.println("<script>alert('Product Added Successfully..')</script>");
								}
								if(request.getParameter("m1")!=null)
								{
									out.println("<script>alert('LoginFailed..')</script>");
								}			
								%>


<br><br><br>
<h1><font size="5" color="#6666ff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome To Seller...</font></h1>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>