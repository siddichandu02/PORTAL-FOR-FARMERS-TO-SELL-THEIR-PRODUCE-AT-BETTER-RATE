<%@ include file="uheader.jsp"%>

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*,java.util.*"%>

<%try{

Connection con = databasecon.getconnection();
Statement st1=con.createStatement();
Statement st2=con.createStatement();

%>


<%! String[] pid; 
int total=0; 
ArrayList al=new ArrayList();
ArrayList al1=new ArrayList();
%>
<% 
String Email=session.getAttribute("Semail")+"";
   pid = request.getParameterValues("pid");
   if (pid != null) 
   {
	   al.clear();
      for (int i = 0; i < pid.length; i++) 
      {

al.add(pid[i]);
al1.clear();

ResultSet rs= st1.executeQuery("SELECT price FROM products where pnumber='"+pid[i]+"' and Email='"+Email+"'");
if(rs.next()){
	//System.out.println(1);
total+=rs.getInt(1);

}
  } 
//session.setAttribute("al",al);

   }
  
   else {
   response.sendRedirect("buyproducts.jsp?msg=not checked");
   }



for (int i=0;i<al.size();i++) 
      {
		al1.clear();  
ResultSet rs1=st2.executeQuery("select pname,image,price from products where pnumber='"+al.get(i).toString()+"' and Email='"+Email+"'");
if(rs1.next()){
	
al1.add(rs1.getString(1));

String Email2=session.getAttribute("uemail")+"";
//out.println(Email2);
int g=st1.executeUpdate("delete from cartitems where semail!='"+Email+"' and email='"+Email2+"'");
int q= st1.executeUpdate("insert into cartitems (`email`,`pname`,`price`,`image`,`semail`)values('"+Email2+"','"+rs1.getString(1)+"',"+rs1.getString(3)+",'"+rs1.getString(2)+"','"+Email+"')");
}
	  }
response.sendRedirect("userhome.jsp?m=added");
//out.print("USER REGISTERED SUCCESSFULLY");
}
catch(Exception e1)
{
	e1.printStackTrace();
out.println(e1.getMessage());
}


%>
<%@include file="footer.jsp"%>