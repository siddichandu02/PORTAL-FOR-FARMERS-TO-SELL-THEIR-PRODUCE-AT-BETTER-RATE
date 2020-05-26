<%@ include file="header.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
    String seller = request.getParameter("seller");
 //System.out.println("uloginname:"+uloginname);
    String password = request.getParameter("pass");
	// System.out.println("password:"+password);
    try{
       
        String company=null;
		String userid=null;
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from seller where sname='"+seller+"' and pass='"+password+"' and status='approved' ");
        if(rs.next())
        {
		   session.setAttribute("seller",seller);
		   
			response.sendRedirect("sellerhome.jsp");
        }
       else 
        {
            response.sendRedirect("seller.jsp?m1=LoginFail");
                }
	}
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>