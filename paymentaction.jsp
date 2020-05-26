<%@include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
    String uemail = session.getAttribute("uemail").toString();
 String paymentmode=request.getParameter("type")+"";
 String mode="And Your Online Payment Also Successfully Done";
 int rs=0;
 int id=-1;
 if(paymentmode.equals("cash"))
 {
	 mode="Please pay cash at the time of delivery";
 }
 
    try{
      
      	Connection con=databasecon.getconnection();
        Statement st = con.createStatement();
		Statement st1=con.createStatement();
		ResultSet rs2=st1.executeQuery("select * from cartitems where email='"+uemail+"'");
		rs2.next();
         rs= st.executeUpdate("insert into  orderdetails (`email`,`semail`,`paystatus`,`status`) values('"+uemail+"','"+rs2.getString(5)+"','confirmed','wait'"+")");
		 ResultSet rs3=st.executeQuery("SELECT distinct LAST_INSERT_ID() from orderdetails;");
		 rs3.next();
		 id=Integer.parseInt(rs3.getString(1));
	     rs2=st1.executeQuery("select * from cartitems where email='"+uemail+"'");
		while(rs2.next())
		{
			st.executeUpdate("insert into  orderitems (`orderid`,`pname`,`price`,`image`) values("+id+",'"+rs2.getString(2)+"','"+rs2.getString(3)+"','"+rs2.getString(4)+"')");
		
		}
        if(rs==1)
        {
			//out.println("Updated");
			st.executeUpdate("delete from cartitems where email='"+uemail+"'");
          }
		  else
		{
				out.println("Updation Failed");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
		%>
<br><br><br><br>
<h1><font color="green">Thank You For Shopping.Your order has been placed and will be confirmed by farmer..... <%=mode%></font></h1>
<br><br><br><br>
<a href="userhome.jsp"><font color="blue">Click Here Go to Home</font></a>
<br><br><br><br><br><br>
<%@include file="footer.jsp"%>