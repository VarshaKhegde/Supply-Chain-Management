<%-- 
    Document   : catupdate
    Created on : 24 Jun, 2024, 3:09:28 PM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%
            String id=request.getParameter("id");
        String name=null;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            ResultSet res=stat.executeQuery("SELECT * FROM `category` WHERE `id`='"+id+"'");
            while(res.next())
            {     
                id=res.getString("id");
                 name=res.getString("name");
 
            }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp"/>
      <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Edit Category</h3>
                </div>
                <form class="pt-3" action="catupdate?id=<%out.println(id);%>" method="POST">
                  <div class="form-group">
                      <input type="text" name="cat" id="cat"  value="<% out.print(name); %>" class="form-control form-control-lg"  placeholder="Category" required="">
                  </div>
                  <div class="mt-3 d-grid gap-2">
                      <input type="submit" class="btn btn-block btn-primary btn-lg fw-medium auth-form-btn" value="UPDATE"/>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
                      <jsp:include page="userfooter.jsp"/>

