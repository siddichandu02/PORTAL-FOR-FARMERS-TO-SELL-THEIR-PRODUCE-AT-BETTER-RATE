<%@include file="aheader.jsp"%>

<%
								if(request.getParameter("m")!=null)
								{
									out.println("<script>alert('Category Created Successfullyd..')</script>");
								}
								if(request.getParameter("m1")!=null)
								{
									out.println("<script>alert('LoginFailed..')</script>");
								}			
								%>

								<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert(' Aprooved.....')</script>");
}%>
<% if(request.getParameter("msg2")!=null){
	  out.println("<script>alert(' Rejected.....')</script>");
}%>


<br><br><br>
<h1><font size="5" color="#6666ff">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome To Administrator...</font></h1>
<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>