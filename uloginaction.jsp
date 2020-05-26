<%@ include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("pass");
	// System.out.println("password:"+password);
    try{
       
        String company=null;
		String userid=null;
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from user where email='"+email+"' and pass='"+password+"'");
        if(rs.next())
        {
		
		   session.setAttribute("uemail",email);
		   

			response.sendRedirect("userhome.jsp");
        }
       else 
        {
            response.sendRedirect("buyer.jsp?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>