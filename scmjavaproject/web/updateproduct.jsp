<%-- 
    Document   : updateproduct
    Created on : 24 Jun, 2024, 11:50:44 AM
    Author     : HP
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.Dbcon"%>
<%@page import="java.sql.Connection"%>
<%
        String id=request.getParameter("id");
        String icode=null;
        String iname=null;
        String model=null;
        String spec=null;
        String war=null;
        String cost=null;

        
                 Class.forName("com.mysql.jdbc.Driver");
            Connection con=new Dbcon().getConnection();
            Statement stat=con.createStatement();
            int flag=0;
            ResultSet res=stat.executeQuery("SELECT * FROM `product` WHERE `id`='"+id+"'");
            while(res.next())
            {     
                icode=res.getString("itemcode");
                 iname=res.getString("itemname");
               model=res.getString("model");
               spec=res.getString("specification");
               war=res.getString("warranty");
               cost=res.getString("cost");
            }
           
%>
<jsp:include page="dealerheader.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
          <div class="row w-100 mx-0">
            <div class="col-lg-6 mx-auto">
              <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                <div class="brand-logo">
<!--                  <img src="assets/images/logo.svg" alt="logo">-->
                     <h3 align="center">Update Product</h3>
                </div>
                <form class="pt-3" action="updatedb1?id=<%out.println(id);%>" method="POST">
                    
                    <div class="form-group">
                        <input type="text" name="icode" id="icode" value="<% out.print(icode); %>" class="form-control form-control-lg"  placeholder="Item Code">
                  </div>
                  <div class="form-group">
                      <input type="text" name="iname" id="iname" value="<% out.print(iname); %>" class="form-control form-control-lg"  placeholder="Item Name" required="">
                  </div>
                    <div class="form-group">
                        <input type="text" name="model" id="model" value="<% out.print(model); %>" class="form-control form-control-lg"  placeholder="Model">
                  </div>
                  <div class="form-group">
                      <input type="text" name="spec" id="spec" value="<% out.print(spec); %>" class="form-control form-control-lg"  placeholder="Specification">
                  </div>
                    <div class="form-group">
                        <input type="text" name="war" id="war" value="<% out.print(war); %>" class="form-control form-control-lg"  placeholder="Warranty" required="">
                  </div>
                    <div class="form-group">
                        <input type="number" name="cost" id="cost" value="<% out.print(cost); %>" class="form-control form-control-lg"  placeholder="Cost" required="">
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
    <!-- container-scroller -->
    <jsp:include page="userfooter.jsp"/>
