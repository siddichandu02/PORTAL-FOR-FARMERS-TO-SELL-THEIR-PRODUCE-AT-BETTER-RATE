<%@ include file="header.jsp"%>

<%
if(request.getParameter("m1")!=null)
{
		  out.println("<script>alert(' Login failed.....')</script>");

}

%>
<br><br>
  <section class="ftco-section contact-section bg-light">
      <div class="container">
      	<div class="row d-flex mb-5 contact-info">
          <div class="w-100"></div>
         
          <div class="col-md-3 d-flex">
          	
          </div>
          <div class="col-md-3 d-flex">
          	
          </div>
          <div class="col-md-3 d-flex">
          
          </div>
        </div>
			<h3>Admin Login<h3>
        <div class="row block-9">
          
            <form action="loginaction.jsp"  class="bg-white p-5 contact-form">
              <div class="form-group">
                <input type="text" name="user"placeholder="user Id"   class="form-control"required>
              </div>
              <div class="form-group">
                <input type="password" name="pass" placeholder="password"  class="form-control" required>
              </div>
             
              <div class="form-group">
                <input type="submit" value="Login" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div id="map" class="bg-white"></div>
          </div>
        </div>
      </div>
    </section>
          
          </div><br><br>
<%@ include file="footer.jsp"%>