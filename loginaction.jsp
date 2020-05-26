<%@ include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    try{
       
		if(user.equals("admin")&&pass.equals("admin"))
		{
			response.sendRedirect("adminhome.jsp");
        }
       else 
        {
            response.sendRedirect("admin.jsp?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
       
%>